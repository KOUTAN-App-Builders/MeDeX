from pathlib import Path
from google import genai

client = genai.Client()

translations = {
    "German": "README.DE.md",
    "French": "README.FR.md",
    "Spanish": "README.ES.md",
    "Simplified Chinese": "README.zh-CN.md"
}

source_file = Path("README.JA.md")

if not source_file.exists():
  raise FileNotFoundError("README.JA.md が見つかりません。")

japanese_readme = source_file.read_text(encoding = "utf-8")


for language, output_file in translations.items():

  prompt = f"""
以下のMarkdown形式のREADMEファイルを{language}に翻訳してください。

【重要なルール】

- Markdownの構造を維持してください
- 見出し、箇条書き、リンクの形式を変更しないでください
- コードブロックの内容は翻訳しないでください
- プログラムコードやコマンドは変更しないでください
- READMEの内容以外の説明は出力しないでください
- 翻訳結果のみを出力してください
- またREADMEの先頭に、このREADMEが生成AIによって日本語版READMEから翻訳されたものであることを、自然な{language}で記載してください

以下が翻訳対象です。

--- README START ---

{japanese_readme}

--- README END ---
"""

  print(f"Translating README into {language}...")

  response = client.models.generate_content(
    model = "gemini-3.5-flash-lite",
    contents = prompt
  )

  translated_text = response.text

  if not translated_text:
    raise RuntimeError(
      f"{language}への翻訳結果を取得できませんでした。"
    )

  Path(output_file).write_text(
    translated_text,
    encoding = "utf-8"
  )

  print(f"Created: {output_file}")


print("All translations completed successfully.")
