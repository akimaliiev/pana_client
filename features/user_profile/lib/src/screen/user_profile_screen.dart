import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:core_ui/core_ui.dart';
import '../bloc/user_profile_bloc.dart';
import '../bloc/user_profile_event.dart';
import '../bloc/user_profile_state.dart';
import '../widgets/group_card.dart';
import '../widgets/header.dart';
import '../widgets/tiles.dart';
import '../utils/labels.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserProfileBloc()..add(const UserProfileLoadRequested()),
      child: const _View(),
    );
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {
  final GlobalKey _langAnchor = GlobalKey();
  final GlobalKey _currAnchor = GlobalKey();
  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: const Text('Гостевой профиль'),
      ),
      body: BlocBuilder<UserProfileBloc, UserProfileState>(
        builder: (context, state) {
          return SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: AppDimens.l),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: AppDimens.m),

                // Header
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppDimens.page),
                  child: Header(
                    initial: (state.displayName.isNotEmpty
                            ? state.displayName[0]
                            : 'Г')
                        .toUpperCase(),
                    title: state.displayName,
                    chip: state.roleLabel,
                  ),
                ),

                const SizedBox(height: AppDimens.m),

                // Основные действия
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppDimens.page),
                  child: GroupCard(
                    title: 'Основные действия',
                    children: const [
                      NavTile(
                          title: 'Мои бронирования',
                          subtitle: 'История и активные бронирования'),
                      NavTile(
                          title: 'Избранное', subtitle: 'Сохранённые объекты'),
                      NavTile(
                          title: 'История оплат',
                          subtitle: 'Платежи и квитанции'),
                      NavTile(
                          title: 'Чат с поддержкой',
                          subtitle: 'Помощь и консультации'),
                    ],
                  ),
                ),

                const SizedBox(height: AppDimens.m),

                // Настройки
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppDimens.page),
                  child: GroupCard(
                    title: 'Настройки',
                    children: [
                      const FieldLabel('Язык приложения'),
                      KeyedSubtree(
                        key: _langAnchor,
                        child: SelectField(
                          value: langLabel(state.language),
                          onTap: () => _openDropdown<LanguageOption>(
                            context: context,
                            anchorKey: _langAnchor,
                            current: state.language,
                            options: const [
                              _Option(LanguageOption.ru, 'Русский'),
                              _Option(LanguageOption.kk, 'Қазақ тілі'),
                              _Option(LanguageOption.en, 'English'),
                              // _Option(LanguageOption.es,  'Español'),
                              // _Option(LanguageOption.tr,  'Türkçe'),
                              // _Option(LanguageOption.zh,  '中文'),
                            ],
                            onSelected: (v) =>
                                context.read<UserProfileBloc>().add(
                                      UserProfileLanguageChanged(v),
                                    ),
                          ),
                        ),
                      ),
                      const GroupSeparator(),
                      const FieldLabel('Валюта отображения'),
                      KeyedSubtree(
                        key: _currAnchor,
                        child: SelectField(
                          value: currLabel(state.currency),
                          onTap: () => _openDropdown<CurrencyOption>(
                            context: context,
                            anchorKey: _currAnchor,
                            current: state.currency,
                            options: const [
                              _Option(CurrencyOption.kzt, '₸ Тенге'),
                              _Option(CurrencyOption.usd, '\$ Доллар'),
                              _Option(CurrencyOption.eur, '€ Евро'),
                            ],
                            onSelected: (v) =>
                                context.read<UserProfileBloc>().add(
                                      UserProfileCurrencyChanged(v),
                                    ),
                          ),
                        ),
                      ),
                      const GroupSeparator(),
                      const FieldLabel('Уведомления'),
                      SwitchTile(
                        label: 'Push-уведомления',
                        initial: state.pushEnabled,
                        leading: const Icon(Icons.smartphone),
                        onChanged: (v) => context
                            .read<UserProfileBloc>()
                            .add(UserProfilePushToggled(v)),
                      ),
                      SwitchTile(
                        label: 'Email-уведомления',
                        initial: state.emailEnabled,
                        gapTop: 12, // визуальный зазор как на эталоне
                        onChanged: (v) => context
                            .read<UserProfileBloc>()
                            .add(UserProfileEmailToggled(v)),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: AppDimens.m),

                // === Информация (как на вашем 1-м скрине: БЕЗ заголовка, с разделителями) ===
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppDimens.page),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: const [
                        _InfoTile('Политика конфиденциальности'),
                        Divider(height: 1),
                        _InfoTile('Пользовательское соглашение'),
                        Divider(height: 1),
                        _InfoTile('Обратная связь'),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: AppDimens.l),

                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppDimens.page),
                  child: Center(
                    child: Text(
                      'Версия приложения ${_formatVersion(state.appVersion)}',
                      style: t.bodyMedium?.copyWith(color: Colors.black54),
                    ),
                  ),
                ),

                const SizedBox(height: AppDimens.m),

                // CTA «Войти в аккаунт» — pill как на эталоне
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppDimens.page),
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xFFD62626),
                      minimumSize: const Size.fromHeight(52),
                      shape:
                          const StadiumBorder(), // полностью скруглённая кнопка
                      textStyle: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    onPressed: () {},
                    child: const Text('Войти в аккаунт'),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _openDropdown<T>({
    required BuildContext context,
    required GlobalKey anchorKey,
    required T current,
    required List<_Option<T>> options,
    required ValueChanged<T> onSelected,
  }) async {
    final RenderBox box =
        anchorKey.currentContext!.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;

    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        box.localToGlobal(Offset.zero, ancestor: overlay),
        box.localToGlobal(box.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    final double width = box.size.width;

    final T? selected = await showMenu<T>(
      context: context,
      position: position,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      items: options
          .map(
            (o) => PopupMenuItem<T>(
              value: o.value,
              padding: EdgeInsets.zero,
              child: _MenuRow(
                width: width,
                label: o.label,
                selected: o.value == current,
              ),
            ),
          )
          .toList(),
    );

    if (selected != null) onSelected(selected);
  }
}
class _MenuRow extends StatelessWidget {
  const _MenuRow({
    required this.width,
    required this.label,
    required this.selected,
  });

  final double width;
  final String label;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;
    return SizedBox(
      width: width, // ширина = ширине поля
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        child: Row(
          children: [
            SizedBox(
              width: 22,
              child: selected
                  ? const Icon(Icons.check, size: 18, color: Colors.black87)
                  : const SizedBox.shrink(),
            ),
            const SizedBox(width: 6),
            Expanded(
              child: Text(
                label,
                style: t.bodyLarge?.copyWith(color: Colors.black87),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ——— helpers ———

class _Option<T> {
  final T value;
  final String label;
  const _Option(this.value, this.label);
}

String _formatVersion(String v) => v.split('+').first;

class _InfoTile extends StatelessWidget {
  const _InfoTile(this.title, {super.key, this.onTap});

  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context).textTheme;

    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
        child: Text(
          title,
          style: t.bodyMedium?.copyWith(
            fontWeight: FontWeight.w700,
            color: Colors.black87,
            height: 1.2, // немного плотнее
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}

class AppDimens {
  static const double page = 16;
  static const double s = 8;
  static const double m = 16;
  static const double l = 24;
  static const double radius = 16;
}
