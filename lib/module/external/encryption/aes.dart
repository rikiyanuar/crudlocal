import '../libraries/encryption.dart';

class AesEncryption {
  static const _keyString = "o!0MrFdR8O8N9DALfp*Q@oP5t_u/seiz";

  static String encryptData(String data, {String keyString = _keyString}) {
    try {
      if (data.isNotEmpty) {
        final encrypter = Encrypter(
          AES(
            Key.fromUtf8(keyString),
            mode: AESMode.cbc,
          ),
        );
        final encrypted = encrypter.encrypt(data, iv: IV.fromLength(16));

        return encrypted.base64;
      } else {
        return "";
      }
    } catch (e) {
      return "";
    }
  }

  static String decryptData(String data, {String keyString = _keyString}) {
    try {
      if (data.isNotEmpty) {
        final encrypter = Encrypter(
          AES(
            Key.fromUtf8(keyString),
            mode: AESMode.cbc,
          ),
        );
        final encrypted = Encrypted.fromBase64(data);
        final decrypted = encrypter.decrypt(encrypted, iv: IV.fromLength(16));

        return decrypted;
      } else {
        return "";
      }
    } catch (e) {
      return "";
    }
  }
}
