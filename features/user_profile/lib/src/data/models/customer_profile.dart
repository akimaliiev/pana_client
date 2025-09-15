enum CustomerSex { male, female, other, unknown }
enum CustomerStatus {
  active, pending, preregistered, inactive, blocked, deleted, unknown
}

CustomerSex _sexFrom(String? v) {
  switch ((v ?? '').toLowerCase()) {
    case 'male': return CustomerSex.male;
    case 'female': return CustomerSex.female;
    case 'other': return CustomerSex.other;
    default: return CustomerSex.unknown;
  }
}

CustomerStatus _statusFrom(String? v) {
  switch ((v ?? '').toLowerCase()) {
    case 'active': return CustomerStatus.active;
    case 'pending': return CustomerStatus.pending;
    case 'preregistered': return CustomerStatus.preregistered;
    case 'inactive': return CustomerStatus.inactive;
    case 'blocked': return CustomerStatus.blocked;
    case 'deleted': return CustomerStatus.deleted;
    default: return CustomerStatus.unknown;
  }
}

class CustomerProfile {
  final int id;
  final String role;
  final String? name;
  final String? lastName;
  final String? patronymic;
  final String? email;
  final bool emailVerified;
  final String? phone;
  final bool phoneVerified;
  final String? dob;
  final CustomerSex sex;
  final String? avatar;
  final String? deviceId;
  final String uuid;
  final int? cityId;
  final int? localeId;
  final int? currencyId;
  final CustomerStatus status;

  const CustomerProfile({
    required this.id,
    required this.role,
    required this.name,
    required this.lastName,
    required this.patronymic,
    required this.email,
    required this.emailVerified,
    required this.phone,
    required this.phoneVerified,
    required this.dob,
    required this.sex,
    required this.avatar,
    required this.deviceId,
    required this.uuid,
    required this.cityId,
    required this.localeId,
    required this.currencyId,
    required this.status,
  });

  factory CustomerProfile.fromJson(Map<String, dynamic> j) {
    return CustomerProfile(
      id: j['id'] as int,
      role: j['role'] as String? ?? 'customer',
      name: j['name'] as String?,
      lastName: j['lastName'] as String?,
      patronymic: j['patronymic'] as String?,
      email: j['email'] as String?,
      emailVerified: j['emailVerified'] as bool? ?? false,
      phone: j['phone'] as String?,
      phoneVerified: j['phoneVerified'] as bool? ?? false,
      dob: j['dob'] as String?,
      sex: _sexFrom(j['sex'] as String?),
      avatar: j['avatar'] as String?,
      deviceId: j['deviceId'] as String?,
      uuid: j['uuid'] as String? ?? '',
      cityId: j['cityId'] as int?,
      localeId: j['localeId'] as int?,
      currencyId: j['currencyId'] as int?,
      status: _statusFrom(j['status'] as String?),
    );
  }
}
