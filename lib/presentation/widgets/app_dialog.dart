// Enum untuk menentukan tipe dialog tetap kita gunakan
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

enum DialogType { success, error, confirm }

/// Fungsi global untuk menampilkan AlertDialog yang konsisten di seluruh aplikasi.
void showAppDialog(
  BuildContext context, {
  required DialogType type,
  required String message,
  String? title,
  VoidCallback? onConfirm,
  String confirmText = 'OK',
}) {
  Widget icon;
  String defaultTitle;

  // Tentukan ikon dan judul default berdasarkan tipe dialog
  switch (type) {
    case DialogType.success:
      icon = const Icon(
        Icons.check_circle_outline,
        color: Colors.green,
        size: 48,
      );
      defaultTitle = 'Berhasil';
      break;
    case DialogType.error:
      icon = const Icon(Icons.error_outline, color: Colors.red, size: 48);
      defaultTitle = 'Terjadi Kesalahan';
      break;
    case DialogType.confirm:
      icon = Icon(
        Icons.help_outline,
        color: Theme.of(context).primaryColor,
        size: 48,
      );
      defaultTitle = 'Konfirmasi';
      break;
  }

  showDialog(
    context: context,
    barrierDismissible: false, // Pengguna harus menekan tombol
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        icon: icon,
        title: Text(title ?? defaultTitle, style: kJakartaBold),
        content: Text(
          message,
          textAlign: TextAlign.center,
          style: kJakartaRegular,
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: <Widget>[
          // Tambahkan tombol Batal hanya untuk tipe konfirmasi
          if (type == DialogType.confirm)
            TextButton(
              child: Text('Batal', style: kJakartaRegular),
              onPressed: () {
                Navigator.of(dialogContext).pop(); // Hanya tutup dialog
              },
            ),
          // Tombol konfirmasi utama
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: () {
              Navigator.of(dialogContext).pop(); // Tutup dialog
              onConfirm?.call(); // Jalankan aksi tambahan
            },
            child: Text(
              confirmText,
              style: kJakartaRegular.copyWith(color: kWhite),
            ),
          ),
        ],
      );
    },
  );
}
