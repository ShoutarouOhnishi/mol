import 'package:flutter/material.dart';

class AppStyles {
  // 見出し用のスタイル
  static const TextStyle headline = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  // 本文用のスタイル
  static const TextStyle body = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  // 注釈用のスタイル
  static const TextStyle caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );

  // プライマリーボタンのスタイル（ダークグレーに白テキスト）
  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
        horizontal: 15.0, vertical: 15.0), // パディングを設定
    backgroundColor: Colors.grey[900], // ボタンの背景色を暗めのグレーに変更
    foregroundColor: Colors.white, // ボタンのテキスト色を白に保持
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 5.0, // 影の効果を追加
  );

  // セカンダリーボタンのスタイル（グレー背景に白テキスト）
  static final ButtonStyle secondaryButton = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
        horizontal: 15.0, vertical: 15.0), // パディングを設定
    backgroundColor: Colors.grey, // ボタンの背景色
    foregroundColor: Colors.white, // ボタンのテキスト色
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 3.0, // 影の効果を追加
  );

  // テルシャリーボタンのスタイル（ダークグレー背景に白テキスト）
  static final ButtonStyle tertiaryButton = ElevatedButton.styleFrom(
    padding: const EdgeInsets.symmetric(
        horizontal: 15.0, vertical: 15.0), // パディングを設定
    backgroundColor: Colors.grey[850], // ボタンの背景色
    foregroundColor: Colors.white, // ボタンのテキスト色
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
    elevation: 2.0, // 影の効果を追加
  );
}
