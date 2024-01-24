import 'package:bip39/bip39.dart' as bip39;
import 'package:futurstore_console/utils/constants.dart';
import 'package:polkadart_keyring/polkadart_keyring.dart';
import 'package:polkadart/polkadart.dart' show Provider, StateApi;

class SubstrateWallet {
  String? _mnemonic;
  KeyPair? _keyPair;

  // Private constructor
  SubstrateWallet._privateConstructor();

  // Static final instance
  static final SubstrateWallet _instance =
      SubstrateWallet._privateConstructor();

  // Static method
  static SubstrateWallet get instance {
    return _instance;
  }

  //SubstrateWallet() {}

  /// Generate Mnemonic. Use for test only entropy needs to be improved 🚧
  void _generateMnemonic() {
    _mnemonic = bip39.generateMnemonic();
  }

  /// Initialize wallet by generating a keypair from the mnemonic
  Future<void> init() async {
    _generateMnemonic();
    await _generateKeyPair();
  }

  /// Generate Keypair from Mnemonic
  Future<void> _generateKeyPair() async {
    _keyPair = await KeyPair.sr25519.fromMnemonic (_mnemonic!);
  }

  String? getMnemonic() {
    return _mnemonic;
  }

  KeyPair? getKeyPair() {
    return _keyPair;
  }

}
