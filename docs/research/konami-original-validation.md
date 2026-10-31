# `konami_c.py original` ROM再現性検証

## 実行条件

- コマンド: `py -3 tools/validate_konami_original.py`
- `base.sfc` SHA-1: `24832a8a054a83bbca241f8daf8b39ed2932996f`
- ポインタ収集元: `disassembly/bank_88.asm` の `Source: ROM` 注記行
- ラベル解決元: `disassembly/asset-labels.asm` と各bankの `org` 直後の別名（`spc_driver` / `spc_samples`）
- LoROM変換: `((bank & $7F) * $8000) + (address & $7FFF)`
- `$400000` 非圧縮フラグ付き参照を除外し、解決後アドレスで重複除去
- 展開: `tools/konami_d.py`（game type 1）を使用し、`konami_c.decompress()` とも照合

## 集計

| 項目 | 件数 |
|---|---:|
| 検出ポインタ | 4,539 |
| 圧縮参照 | 3,905 |
| 非圧縮フラグ付き参照（除外） | 634 |
| 重複除去後の圧縮対象 | 1,039 |
| 今回処理した対象 | 1,039 |
| インターリーブ（除外） | 228 |
| 検証実行（除外以外） | 811 |
| 圧縮データ完全一致 | 311 |
| 展開一致・圧縮不一致 | 500 |
| エラー | 0 |

正常に展開・再圧縮できた 811 件中、完全一致は 311 件（38.35%）です。

既知の対照データ `spc_driver`（$B78000、圧縮10,515 bytes）は完全一致に含まれます。

### 種別別

| 種別 | 完全一致 | 展開一致・圧縮不一致 | インターリーブ除外 | エラー |
|---|---:|---:|---:|---:|
| `FILE` | 228 | 252 | 10 | 0 |
| `SPRITE` | 55 | 81 | 0 | 0 |
| `VRAM` | 27 | 167 | 218 | 0 |
| `spc` | 1 | 0 | 0 | 0 |

### 不一致500件のサイズ差分布

| 再圧縮サイズ - 元圧縮サイズ | 件数 |
|---|---:|
| 小さい | 18 |
| 同じ | 48 |
| 大きい | 434 |

差の最小 / 中央値 / 最大は `-8 / +6 / +162` bytes、合計は `+6,333` bytesです。

### 最初のコマンド差の分類

| 分類 | 件数 |
|---|---:|
| `lz_at_eof` | 107 |
| `lz_from_initial_zero_window` | 39 |
| `lz_vs_rle_selection` | 51 |
| `raw_copy_segmentation` | 231 |
| `rle_length_segmentation` | 37 |
| `rle_type_selection` | 7 |
| `short_zero_pairs` | 22 |
| `two_byte_command_after_raw31` | 6 |

### 元ROMコマンドから直接確認できる境界事例

| 事例 | 該当資産 | コマンド数 |
|---|---:|---:|
| `lz_at_eof` | 245 | 245 |
| `lz_from_initial_zero_window` | 169 | 247 |
| `short_zero_pairs` | 54 | 131 |
| `two_byte_command_after_raw31` | 7 | 8 |

これらは重複します。不一致500件のうち、少なくとも1事例を含むものは 410 件、含まないものは 90 件です。

## インターリーブ除外

- `graphics/konami_logo_4bpp.chr.konamiz`（$968000 / ROM offset $0B0000）
- `VRAM_ABE372`（$ABE372 / ROM offset $15E372）
- `VRAM_969177`（$969177 / ROM offset $0B1177）
- `VRAM_A59B61`（$A59B61 / ROM offset $129B61）
- `VRAM_BFB6FB`（$BFB6FB / ROM offset $1FB6FB）
- `VRAM_97923E`（$97923E / ROM offset $0B923E）
- `VRAM_BFDEB5`（$BFDEB5 / ROM offset $1FDEB5）
- `VRAM_BFBDBF`（$BFBDBF / ROM offset $1FBDBF）
- `VRAM_988000`（$988000 / ROM offset $0C0000）
- `VRAM_87E500`（$87E500 / ROM offset $03E500）
- `VRAM_9BF132`（$9BF132 / ROM offset $0DF132）
- `VRAM_93F0B9`（$93F0B9 / ROM offset $09F0B9）
- `VRAM_9FE745`（$9FE745 / ROM offset $0FE745）
- `VRAM_96DBC2`（$96DBC2 / ROM offset $0B5BC2）
- `VRAM_A3AEAD`（$A3AEAD / ROM offset $11AEAD）
- `VRAM_96E3D4`（$96E3D4 / ROM offset $0B63D4）
- `VRAM_A8EA3D`（$A8EA3D / ROM offset $146A3D）
- `VRAM_96ED93`（$96ED93 / ROM offset $0B6D93）
- `VRAM_93F93A`（$93F93A / ROM offset $09F93A）
- `VRAM_93F9CE`（$93F9CE / ROM offset $09F9CE）
- `VRAM_93FAA3`（$93FAA3 / ROM offset $09FAA3）
- `VRAM_93FB5A`（$93FB5A / ROM offset $09FB5A）
- `VRAM_93FBDD`（$93FBDD / ROM offset $09FBDD）
- `VRAM_97C71B`（$97C71B / ROM offset $0BC71B）
- `VRAM_97882E`（$97882E / ROM offset $0B882E）
- `VRAM_A1A44E`（$A1A44E / ROM offset $10A44E）
- `VRAM_A1A97D`（$A1A97D / ROM offset $10A97D）
- `VRAM_A1AEBB`（$A1AEBB / ROM offset $10AEBB）
- `VRAM_A1B400`（$A1B400 / ROM offset $10B400）
- `VRAM_A0ED31`（$A0ED31 / ROM offset $106D31）
- `VRAM_97A5C0`（$97A5C0 / ROM offset $0BA5C0）
- `VRAM_A1D57F`（$A1D57F / ROM offset $10D57F）
- `VRAM_96F5FC`（$96F5FC / ROM offset $0B75FC）
- `VRAM_97C21D`（$97C21D / ROM offset $0BC21D）
- `VRAM_9CF4CE`（$9CF4CE / ROM offset $0E74CE）
- `VRAM_B1BE51`（$B1BE51 / ROM offset $18BE51）
- `VRAM_9CF795`（$9CF795 / ROM offset $0E7795）
- `VRAM_A2BDE7`（$A2BDE7 / ROM offset $113DE7）
- `VRAM_A2C382`（$A2C382 / ROM offset $114382）
- `VRAM_9AE411`（$9AE411 / ROM offset $0D6411）
- `VRAM_AAC911`（$AAC911 / ROM offset $154911）
- `VRAM_BFECB6`（$BFECB6 / ROM offset $1FECB6）
- `VRAM_AACB79`（$AACB79 / ROM offset $154B79）
- `VRAM_AAB62F`（$AAB62F / ROM offset $15362F）
- `VRAM_BE8821`（$BE8821 / ROM offset $1F0821）
- `VRAM_A2E1DE`（$A2E1DE / ROM offset $1161DE）
- `VRAM_91D960`（$91D960 / ROM offset $08D960）
- `VRAM_AAA9F9`（$AAA9F9 / ROM offset $1529F9）
- `VRAM_A19B2C`（$A19B2C / ROM offset $109B2C）
- `VRAM_A38A50`（$A38A50 / ROM offset $118A50）
- `VRAM_A39A5D`（$A39A5D / ROM offset $119A5D）
- `VRAM_A9F6CF`（$A9F6CF / ROM offset $14F6CF）
- `VRAM_98BB94`（$98BB94 / ROM offset $0C3B94）
- `VRAM_998000`（$998000 / ROM offset $0C8000）
- `VRAM_98C082`（$98C082 / ROM offset $0C4082）
- `VRAM_AA9D67`（$AA9D67 / ROM offset $151D67）
- `VRAM_A3D1B9`（$A3D1B9 / ROM offset $11D1B9）
- `VRAM_A6D209`（$A6D209 / ROM offset $135209）
- `VRAM_A6DE24`（$A6DE24 / ROM offset $135E24）
- `VRAM_978581`（$978581 / ROM offset $0B8581）
- `VRAM_AA8000`（$AA8000 / ROM offset $150000）
- `VRAM_AA8215`（$AA8215 / ROM offset $150215）
- `VRAM_A6EEC4`（$A6EEC4 / ROM offset $136EC4）
- `VRAM_AAA058`（$AAA058 / ROM offset $152058）
- `VRAM_AA9787`（$AA9787 / ROM offset $151787）
- `VRAM_91EAF0`（$91EAF0 / ROM offset $08EAF0）
- `VRAM_AFD6A6`（$AFD6A6 / ROM offset $17D6A6）
- `VRAM_ABF769`（$ABF769 / ROM offset $15F769）
- `VRAM_AB8000`（$AB8000 / ROM offset $158000）
- `VRAM_AADF5B`（$AADF5B / ROM offset $155F5B）
- `VRAM_BFB4EB`（$BFB4EB / ROM offset $1FB4EB）
- `VRAM_AB9CDD`（$AB9CDD / ROM offset $159CDD）
- `VRAM_98D2A6`（$98D2A6 / ROM offset $0C52A6）
- `VRAM_B09408`（$B09408 / ROM offset $181408）
- `VRAM_B08B90`（$B08B90 / ROM offset $180B90）
- `VRAM_B09BBA`（$B09BBA / ROM offset $181BBA）
- `VRAM_99A44E`（$99A44E / ROM offset $0CA44E）
- `VRAM_A5FBCF`（$A5FBCF / ROM offset $12FBCF）
- `VRAM_B4896E`（$B4896E / ROM offset $1A096E）
- `VRAM_B49A72`（$B49A72 / ROM offset $1A1A72）
- `VRAM_B4B0DE`（$B4B0DE / ROM offset $1A30DE）
- `VRAM_B2E2EC`（$B2E2EC / ROM offset $1962EC）
- `VRAM_AEC024`（$AEC024 / ROM offset $174024）
- `VRAM_BF85D4`（$BF85D4 / ROM offset $1F85D4）
- `VRAM_98CA76`（$98CA76 / ROM offset $0C4A76）
- `VRAM_94D951`（$94D951 / ROM offset $0A5951）
- `VRAM_AA8526`（$AA8526 / ROM offset $150526）
- `VRAM_A6FAF2`（$A6FAF2 / ROM offset $137AF2）
- `VRAM_AA891D`（$AA891D / ROM offset $15091D）
- `VRAM_98CE95`（$98CE95 / ROM offset $0C4E95）
- `VRAM_A8DEA9`（$A8DEA9 / ROM offset $145EA9）
- `VRAM_AEC753`（$AEC753 / ROM offset $174753）
- `VRAM_9BECC1`（$9BECC1 / ROM offset $0DECC1）
- `VRAM_92EE85`（$92EE85 / ROM offset $096E85）
- `VRAM_AECD5E`（$AECD5E / ROM offset $174D5E）
- `VRAM_A6CE5E`（$A6CE5E / ROM offset $134E5E）
- `VRAM_B4B103`（$B4B103 / ROM offset $1A3103）
- `VRAM_BF8000`（$BF8000 / ROM offset $1F8000）
- `VRAM_AB858F`（$AB858F / ROM offset $15858F）
- `VRAM_92827E`（$92827E / ROM offset $09027E）
- `VRAM_929533`（$929533 / ROM offset $091533）
- `VRAM_BF92B6`（$BF92B6 / ROM offset $1F92B6）
- `VRAM_B4F6B9`（$B4F6B9 / ROM offset $1A76B9）
- `VRAM_AFFAC2`（$AFFAC2 / ROM offset $17FAC2）
- `VRAM_AA8DFB`（$AA8DFB / ROM offset $150DFB）
- `VRAM_AAEB99`（$AAEB99 / ROM offset $156B99）
- `VRAM_A2FC2E`（$A2FC2E / ROM offset $117C2E）
- `VRAM_92A61F`（$92A61F / ROM offset $09261F）
- `VRAM_B0F822`（$B0F822 / ROM offset $187822）
- `VRAM_B2E058`（$B2E058 / ROM offset $196058）
- `VRAM_929B75`（$929B75 / ROM offset $091B75）
- `VRAM_999F7A`（$999F7A / ROM offset $0C9F7A）
- `VRAM_AAE187`（$AAE187 / ROM offset $156187）
- `VRAM_9CD2C0`（$9CD2C0 / ROM offset $0E52C0）
- `VRAM_BED9A9`（$BED9A9 / ROM offset $1F59A9）
- `VRAM_BE9EE3`（$BE9EE3 / ROM offset $1F1EE3）
- `VRAM_98F29E`（$98F29E / ROM offset $0C729E）
- `VRAM_9AEC6F`（$9AEC6F / ROM offset $0D6C6F）
- `VRAM_A4954E`（$A4954E / ROM offset $12154E）
- `VRAM_A4B574`（$A4B574 / ROM offset $123574）
- `VRAM_A4BDC3`（$A4BDC3 / ROM offset $123DC3）
- `VRAM_A5828D`（$A5828D / ROM offset $12828D）
- `VRAM_A4C160`（$A4C160 / ROM offset $124160）
- `VRAM_998861`（$998861 / ROM offset $0C8861）
- `VRAM_998B3D`（$998B3D / ROM offset $0C8B3D）
- `VRAM_99932A`（$99932A / ROM offset $0C932A）
- `VRAM_998548`（$998548 / ROM offset $0C8548）
- `VRAM_99EE4C`（$99EE4C / ROM offset $0CEE4C）
- `VRAM_A4D723`（$A4D723 / ROM offset $125723）
- `VRAM_A4E820`（$A4E820 / ROM offset $126820）
- `VRAM_99967F`（$99967F / ROM offset $0C967F）
- `VRAM_A4EE9B`（$A4EE9B / ROM offset $126E9B）
- `VRAM_B1F793`（$B1F793 / ROM offset $18F793）
- `VRAM_AC8580`（$AC8580 / ROM offset $160580）
- `VRAM_AC9AB7`（$AC9AB7 / ROM offset $161AB7）
- `VRAM_AC9E39`（$AC9E39 / ROM offset $161E39）
- `VRAM_ACA0B2`（$ACA0B2 / ROM offset $1620B2）
- `VRAM_ACB150`（$ACB150 / ROM offset $163150）
- `VRAM_ACB64A`（$ACB64A / ROM offset $16364A）
- `VRAM_ACBC06`（$ACBC06 / ROM offset $163C06）
- `VRAM_ACC9D1`（$ACC9D1 / ROM offset $1649D1）
- `VRAM_A8E614`（$A8E614 / ROM offset $146614）
- `VRAM_AAB006`（$AAB006 / ROM offset $153006）
- `VRAM_B3E738`（$B3E738 / ROM offset $19E738）
- `VRAM_BEB2DC`（$BEB2DC / ROM offset $1F32DC）
- `VRAM_BEB933`（$BEB933 / ROM offset $1F3933）
- `VRAM_B3ED38`（$B3ED38 / ROM offset $19ED38）
- `VRAM_ACC281`（$ACC281 / ROM offset $164281）
- `VRAM_ACCFB6`（$ACCFB6 / ROM offset $164FB6）
- `VRAM_AACF09`（$AACF09 / ROM offset $154F09）
- `VRAM_ACD889`（$ACD889 / ROM offset $165889）
- `VRAM_AAD775`（$AAD775 / ROM offset $155775）
- `VRAM_98EDB5`（$98EDB5 / ROM offset $0C6DB5）
- `VRAM_98F027`（$98F027 / ROM offset $0C7027）
- `VRAM_ACDD6A`（$ACDD6A / ROM offset $165D6A）
- `VRAM_B1E019`（$B1E019 / ROM offset $18E019）
- `VRAM_B2F493`（$B2F493 / ROM offset $197493）
- `VRAM_B1E3B7`（$B1E3B7 / ROM offset $18E3B7）
- `VRAM_ACE635`（$ACE635 / ROM offset $166635）
- `VRAM_AADA36`（$AADA36 / ROM offset $155A36）
- `VRAM_ACE9B9`（$ACE9B9 / ROM offset $1669B9）
- `VRAM_B1EFEC`（$B1EFEC / ROM offset $18EFEC）
- `VRAM_ACEC40`（$ACEC40 / ROM offset $166C40）
- `VRAM_ACF1E6`（$ACF1E6 / ROM offset $1671E6）
- `VRAM_B1F32D`（$B1F32D / ROM offset $18F32D）
- `VRAM_B380A6`（$B380A6 / ROM offset $1980A6）
- `VRAM_B38A36`（$B38A36 / ROM offset $198A36）
- `VRAM_A8E781`（$A8E781 / ROM offset $146781）
- `VRAM_B39175`（$B39175 / ROM offset $199175）
- `VRAM_AAF58C`（$AAF58C / ROM offset $15758C）
- `VRAM_AAF8E6`（$AAF8E6 / ROM offset $1578E6）
- `VRAM_A9C515`（$A9C515 / ROM offset $14C515）
- `VRAM_A9DBD4`（$A9DBD4 / ROM offset $14DBD4）
- `VRAM_BEC3F5`（$BEC3F5 / ROM offset $1F43F5）
- `VRAM_A9D889`（$A9D889 / ROM offset $14D889）
- `VRAM_A9D46F`（$A9D46F / ROM offset $14D46F）
- `VRAM_A2EBBA`（$A2EBBA / ROM offset $116BBA）
- `VRAM_97DF64`（$97DF64 / ROM offset $0BDF64）
- `VRAM_A28000`（$A28000 / ROM offset $110000）
- `VRAM_B18000`（$B18000 / ROM offset $188000）
- `VRAM_9DF25A`（$9DF25A / ROM offset $0EF25A）
- `VRAM_96BB25`（$96BB25 / ROM offset $0B3B25）
- `VRAM_9CE2B4`（$9CE2B4 / ROM offset $0E62B4）
- `VRAM_A5AD6D`（$A5AD6D / ROM offset $12AD6D）
- `VRAM_A58AD6`（$A58AD6 / ROM offset $128AD6）
- `VRAM_9886AA`（$9886AA / ROM offset $0C06AA）
- `VRAM_ABCBE4`（$ABCBE4 / ROM offset $15CBE4）
- `VRAM_989414`（$989414 / ROM offset $0C1414）
- `VRAM_98A5B6`（$98A5B6 / ROM offset $0C25B6）
- `VRAM_AE8F22`（$AE8F22 / ROM offset $170F22）
- `VRAM_97C99D`（$97C99D / ROM offset $0BC99D）
- `VRAM_A1FDD9`（$A1FDD9 / ROM offset $10FDD9）
- `VRAM_97EA2B`（$97EA2B / ROM offset $0BEA2B）
- `VRAM_97D3B9`（$97D3B9 / ROM offset $0BD3B9）
- `VRAM_AE9EB9`（$AE9EB9 / ROM offset $171EB9）
- `VRAM_92FBC6`（$92FBC6 / ROM offset $097BC6）
- `VRAM_AEA392`（$AEA392 / ROM offset $172392）
- `VRAM_97D850`（$97D850 / ROM offset $0BD850）
- `VRAM_92FA9A`（$92FA9A / ROM offset $097A9A）
- `VRAM_AEA8AF`（$AEA8AF / ROM offset $1728AF）
- `VRAM_97DA92`（$97DA92 / ROM offset $0BDA92）
- `VRAM_97F456`（$97F456 / ROM offset $0BF456）
- `VRAM_97F6CC`（$97F6CC / ROM offset $0BF6CC）
- `VRAM_AEB6F2`（$AEB6F2 / ROM offset $1736F2）
- `VRAM_AEBBC2`（$AEBBC2 / ROM offset $173BC2）
- `VRAM_A6FEEF`（$A6FEEF / ROM offset $137EEF）
- `VRAM_AEE440`（$AEE440 / ROM offset $176440）
- `VRAM_97DF16`（$97DF16 / ROM offset $0BDF16）
- `VRAM_97E185`（$97E185 / ROM offset $0BE185）
- `VRAM_AEE76C`（$AEE76C / ROM offset $17676C）
- `VRAM_AEEB4F`（$AEEB4F / ROM offset $176B4F）
- `VRAM_97E8EE`（$97E8EE / ROM offset $0BE8EE）
- `VRAM_AF8000`（$AF8000 / ROM offset $178000）
- `VRAM_98EC72`（$98EC72 / ROM offset $0C6C72）
- `VRAM_97F2AD`（$97F2AD / ROM offset $0BF2AD）
- `VRAM_AFA8BA`（$AFA8BA / ROM offset $17A8BA）
- `VRAM_97FA4E`（$97FA4E / ROM offset $0BFA4E）
- `VRAM_BECCF2`（$BECCF2 / ROM offset $1F4CF2）
- `FILE_A3DDC4`（$A3DDC4 / ROM offset $11DDC4）
- `FILE_A6ADA9`（$A6ADA9 / ROM offset $132DA9）
- `FILE_AFD149`（$AFD149 / ROM offset $17D149）
- `FILE_AAFCB2`（$AAFCB2 / ROM offset $157CB2）
- `FILE_BFF154`（$BFF154 / ROM offset $1FF154）
- `FILE_A7838B`（$A7838B / ROM offset $13838B）
- `FILE_B3B6AF`（$B3B6AF / ROM offset $19B6AF）
- `FILE_B3F6FE`（$B3F6FE / ROM offset $19F6FE）
- `FILE_B4FDFE`（$B4FDFE / ROM offset $1A7DFE）
- `FILE_B4FB76`（$B4FB76 / ROM offset $1A7B76）

## 不一致サイズ一覧

| Address | Label | 展開サイズ | 元圧縮 | 再圧縮 | 差 | 最初の分類 |
|---|---|---:|---:|---:|---:|---|
| $968AB9 | `VRAM_968AB9` | 2,048 | 499 | 525 | +26 | `lz_from_initial_zero_window` |
| $968CAC | `VRAM_968CAC` | 512 | 43 | 96 | +53 | `raw_copy_segmentation` |
| $968CD7 | `VRAM_968CD7` | 512 | 36 | 60 | +24 | `lz_from_initial_zero_window` |
| $A1878F | `VRAM_A1878F` | 4,096 | 3,245 | 3,252 | +7 | `lz_vs_rle_selection` |
| $968CFB | `VRAM_968CFB` | 1,536 | 504 | 496 | -8 | `rle_type_selection` |
| $968EF3 | `VRAM_968EF3` | 2,048 | 644 | 711 | +67 | `raw_copy_segmentation` |
| $96B9C2 | `VRAM_96B9C2` | 2,048 | 355 | 380 | +25 | `raw_copy_segmentation` |
| $969D44 | `VRAM_969D44` | 2,048 | 256 | 327 | +71 | `raw_copy_segmentation` |
| $96A2FF | `VRAM_96A2FF` | 7,872 | 5,827 | 5,987 | +160 | `lz_from_initial_zero_window` |
| $BEF872 | `SPRITE_BEF872` | 1,889 | 1,120 | 1,124 | +4 | `raw_copy_segmentation` |
| $BEDCDD | `SPRITE_BEDCDD` | 1,867 | 1,215 | 1,223 | +8 | `lz_vs_rle_selection` |
| $BFCA23 | `VRAM_BFCA23` | 2,048 | 354 | 403 | +49 | `raw_copy_segmentation` |
| $BFCB85 | `VRAM_BFCB85` | 2,048 | 350 | 413 | +63 | `raw_copy_segmentation` |
| $BFBADC | `VRAM_BFBADC` | 1,504 | 739 | 806 | +67 | `raw_copy_segmentation` |
| $BFCE4D | `VRAM_BFCE4D` | 2,048 | 349 | 386 | +37 | `raw_copy_segmentation` |
| $BFCFAA | `VRAM_BFCFAA` | 2,048 | 186 | 201 | +15 | `raw_copy_segmentation` |
| $BFD894 | `VRAM_BFD894` | 2,048 | 591 | 595 | +4 | `lz_at_eof` |
| $BFDD6C | `VRAM_BFDD6C` | 2,048 | 329 | 379 | +50 | `lz_from_initial_zero_window` |
| $BFCCE3 | `VRAM_BFCCE3` | 2,048 | 172 | 175 | +3 | `lz_at_eof` |
| $BFCD8F | `VRAM_BFCD8F` | 2,048 | 190 | 194 | +4 | `two_byte_command_after_raw31` |
| $BFDAE3 | `VRAM_BFDAE3` | 2,048 | 649 | 653 | +4 | `lz_at_eof` |
| $BFD064 | `VRAM_BFD064` | 2,048 | 836 | 910 | +74 | `raw_copy_segmentation` |
| $BFD3A8 | `VRAM_BFD3A8` | 2,048 | 663 | 688 | +25 | `lz_vs_rle_selection` |
| $BFD63F | `VRAM_BFD63F` | 2,048 | 597 | 616 | +19 | `lz_at_eof` |
| $94E769 | `SPRITE_94E769` | 573 | 370 | 371 | +1 | `raw_copy_segmentation` |
| $87F89D | `FILE_87F89D` | 2,048 | 446 | 463 | +17 | `lz_vs_rle_selection` |
| $87FA5B | `FILE_87FA5B` | 2,048 | 501 | 516 | +15 | `rle_length_segmentation` |
| $87FC50 | `FILE_87FC50` | 2,048 | 307 | 333 | +26 | `lz_vs_rle_selection` |
| $87FD83 | `FILE_87FD83` | 2,048 | 521 | 538 | +17 | `lz_vs_rle_selection` |
| $A8F8E9 | `FILE_A8F8E9` | 2,048 | 108 | 107 | -1 | `rle_length_segmentation` |
| $A8F955 | `FILE_A8F955` | 2,048 | 108 | 107 | -1 | `rle_length_segmentation` |
| $A8F9C1 | `FILE_A8F9C1` | 2,048 | 355 | 355 | +0 | `rle_length_segmentation` |
| $A8FB24 | `FILE_A8FB24` | 2,048 | 208 | 208 | +0 | `rle_length_segmentation` |
| $A8FBF4 | `FILE_A8FBF4` | 1,024 | 74 | 102 | +28 | `lz_vs_rle_selection` |
| $9FFB3F | `VRAM_9FFB3F` | 32 | 7 | 15 | +8 | `lz_at_eof` |
| $A0EB80 | `VRAM_A0EB80` | 1,024 | 71 | 99 | +28 | `lz_from_initial_zero_window` |
| $9FFB46 | `FILE_9FFB46` | 2,048 | 344 | 357 | +13 | `lz_vs_rle_selection` |
| $BFEDDC | `FILE_BFEDDC` | 1,024 | 307 | 327 | +20 | `raw_copy_segmentation` |
| $A2FE3E | `FILE_A2FE3E` | 2,048 | 357 | 370 | +13 | `rle_length_segmentation` |
| $96EC8D | `SPRITE_96EC8D` | 483 | 262 | 268 | +6 | `lz_at_eof` |
| $A3B41D | `VRAM_A3B41D` | 2,848 | 1,229 | 1,311 | +82 | `lz_from_initial_zero_window` |
| $96E9DD | `FILE_96E9DD` | 2,048 | 464 | 528 | +64 | `lz_vs_rle_selection` |
| $96F364 | `FILE_96F364` | 1,024 | 311 | 324 | +13 | `lz_vs_rle_selection` |
| $96F49B | `FILE_96F49B` | 1,024 | 264 | 315 | +51 | `lz_vs_rle_selection` |
| $958000 | `VRAM_958000` | 16,384 | 130 | 130 | +0 | `rle_length_segmentation` |
| $A5FB01 | `VRAM_A5FB01` | 2,048 | 206 | 249 | +43 | `raw_copy_segmentation` |
| $A196FD | `VRAM_A196FD` | 1,024 | 313 | 343 | +30 | `lz_from_initial_zero_window` |
| $A1943C | `VRAM_A1943C` | 1,024 | 705 | 719 | +14 | `raw_copy_segmentation` |
| $A0EE5B | `VRAM_A0EE5B` | 2,048 | 246 | 312 | +66 | `raw_copy_segmentation` |
| $A18681 | `VRAM_A18681` | 2,048 | 129 | 145 | +16 | `raw_copy_segmentation` |
| $98BB69 | `VRAM_98BB69` | 96 | 43 | 44 | +1 | `short_zero_pairs` |
| $98BADB | `VRAM_98BADB` | 2,048 | 142 | 162 | +20 | `lz_at_eof` |
| $A78000 | `VRAM_A78000` | 496 | 261 | 253 | -8 | `rle_type_selection` |
| $A78105 | `VRAM_A78105` | 2,048 | 646 | 655 | +9 | `lz_at_eof` |
| $AAF908 | `VRAM_AAF908` | 864 | 628 | 640 | +12 | `lz_vs_rle_selection` |
| $AAFB7C | `VRAM_AAFB7C` | 2,048 | 310 | 312 | +2 | `lz_at_eof` |
| $93F991 | `VRAM_93F991` | 128 | 61 | 64 | +3 | `raw_copy_segmentation` |
| $93FBB7 | `VRAM_93FBB7` | 128 | 38 | 47 | +9 | `lz_vs_rle_selection` |
| $BEE19C | `SPRITE_BEE19C` | 1,830 | 1,354 | 1,356 | +2 | `raw_copy_segmentation` |
| $97B500 | `VRAM_97B500` | 3,072 | 2,211 | 2,226 | +15 | `raw_copy_segmentation` |
| $99A9A9 | `VRAM_99A9A9` | 8,384 | 2,819 | 2,832 | +13 | `rle_length_segmentation` |
| $99A71A | `VRAM_99A71A` | 16,384 | 655 | 655 | +0 | `lz_vs_rle_selection` |
| $97B0A1 | `VRAM_97B0A1` | 2,048 | 1,119 | 1,147 | +28 | `lz_at_eof` |
| $A1B9C5 | `VRAM_A1B9C5` | 16,256 | 7,098 | 7,123 | +25 | `rle_length_segmentation` |
| $BEE6E6 | `SPRITE_BEE6E6` | 457 | 287 | 299 | +12 | `lz_at_eof` |
| $BEF810 | `SPRITE_BEF810` | 223 | 98 | 114 | +16 | `lz_at_eof` |
| $97BDA3 | `VRAM_97BDA3` | 2,048 | 1,146 | 1,154 | +8 | `raw_copy_segmentation` |
| $A1DDB6 | `VRAM_A1DDB6` | 15,552 | 6,688 | 6,704 | +16 | `lz_vs_rle_selection` |
| $BEE805 | `SPRITE_BEE805` | 654 | 479 | 479 | +0 | `raw_copy_segmentation` |
| $B1984E | `VRAM_B1984E` | 4,096 | 3,091 | 3,127 | +36 | `raw_copy_segmentation` |
| $B1A461 | `VRAM_B1A461` | 1,280 | 813 | 851 | +38 | `lz_from_initial_zero_window` |
| $97AB80 | `VRAM_97AB80` | 2,048 | 1,313 | 1,386 | +73 | `raw_copy_segmentation` |
| $99FBF4 | `VRAM_99FBF4` | 2,048 | 825 | 884 | +59 | `raw_copy_segmentation` |
| $B1A78E | `VRAM_B1A78E` | 16,192 | 5,827 | 5,831 | +4 | `lz_vs_rle_selection` |
| $A28C5F | `VRAM_A28C5F` | 16,384 | 7,824 | 7,834 | +10 | `lz_vs_rle_selection` |
| $B3B99D | `VRAM_B3B99D` | 14,720 | 7,848 | 7,894 | +46 | `lz_vs_rle_selection` |
| $B3D845 | `VRAM_B3D845` | 5,120 | 2,830 | 2,845 | +15 | `lz_vs_rle_selection` |
| $BEECC4 | `SPRITE_BEECC4` | 2,715 | 1,518 | 1,521 | +3 | `raw_copy_segmentation` |
| $BEF7B5 | `SPRITE_BEF7B5` | 149 | 91 | 93 | +2 | `lz_at_eof` |
| $A2AAEF | `VRAM_A2AAEF` | 6,144 | 4,856 | 4,920 | +64 | `raw_copy_segmentation` |
| $A99D15 | `VRAM_A99D15` | 16,384 | 6,816 | 6,829 | +13 | `rle_length_segmentation` |
| $BEF2B2 | `SPRITE_BEF2B2` | 867 | 610 | 611 | +1 | `lz_at_eof` |
| $A9B7B5 | `VRAM_A9B7B5` | 4,192 | 2,965 | 3,018 | +53 | `raw_copy_segmentation` |
| $AAEF63 | `VRAM_AAEF63` | 3,520 | 1,577 | 1,577 | +0 | `rle_length_segmentation` |
| $ACFA65 | `VRAM_ACFA65` | 16,384 | 257 | 257 | +0 | `rle_length_segmentation` |
| $9AE1E4 | `VRAM_9AE1E4` | 1,216 | 557 | 559 | +2 | `lz_at_eof` |
| $BEF6BC | `SPRITE_BEF6BC` | 290 | 157 | 159 | +2 | `lz_at_eof` |
| $A8BCB4 | `SPRITE_A8BCB4` | 2,341 | 1,348 | 1,349 | +1 | `short_zero_pairs` |
| $A2C861 | `VRAM_A2C861` | 8,192 | 4,191 | 4,191 | +0 | `rle_length_segmentation` |
| $A2D937 | `VRAM_A2D937` | 8,192 | 2,215 | 2,215 | +0 | `rle_length_segmentation` |
| $BE8000 | `VRAM_BE8000` | 8,192 | 2,081 | 2,081 | +0 | `rle_length_segmentation` |
| $A2F130 | `VRAM_A2F130` | 4,096 | 2,814 | 2,887 | +73 | `raw_copy_segmentation` |
| $A1FAD2 | `VRAM_A1FAD2` | 1,280 | 775 | 783 | +8 | `raw_copy_segmentation` |
| $9AF5E6 | `VRAM_9AF5E6` | 2,048 | 609 | 660 | +51 | `raw_copy_segmentation` |
| $9DEF92 | `VRAM_9DEF92` | 960 | 712 | 716 | +4 | `short_zero_pairs` |
| $B4F1D5 | `VRAM_B4F1D5` | 2,048 | 1,252 | 1,271 | +19 | `raw_copy_segmentation` |
| $A88930 | `SPRITE_A88930` | 709 | 402 | 403 | +1 | `lz_vs_rle_selection` |
| $A19836 | `FILE_A19836` | 258 | 103 | 137 | +34 | `raw_copy_segmentation` |
| $A1989D | `FILE_A1989D` | 2,048 | 418 | 517 | +99 | `raw_copy_segmentation` |
| $A19A3F | `FILE_A19A3F` | 2,048 | 237 | 293 | +56 | `raw_copy_segmentation` |
| $84F75B | `FILE_84F75B` | 120 | 36 | 37 | +1 | `lz_at_eof` |
| $84F87A | `FILE_84F87A` | 228 | 20 | 20 | +0 | `rle_length_segmentation` |
| $84F8D6 | `FILE_84F8D6` | 228 | 26 | 26 | +0 | `rle_length_segmentation` |
| $84F8F0 | `FILE_84F8F0` | 268 | 79 | 79 | +0 | `rle_length_segmentation` |
| $84F93F | `FILE_84F93F` | 260 | 46 | 46 | +0 | `rle_length_segmentation` |
| $84F96D | `FILE_84F96D` | 260 | 91 | 91 | +0 | `rle_length_segmentation` |
| $84F9C8 | `FILE_84F9C8` | 260 | 54 | 54 | +0 | `rle_length_segmentation` |
| $84FA4E | `FILE_84FA4E` | 252 | 65 | 65 | +0 | `rle_length_segmentation` |
| $84FAE8 | `FILE_84FAE8` | 252 | 80 | 80 | +0 | `rle_length_segmentation` |
| $84FB8D | `FILE_84FB8D` | 240 | 57 | 56 | -1 | `rle_length_segmentation` |
| $84FC2B | `FILE_84FC2B` | 240 | 68 | 67 | -1 | `rle_length_segmentation` |
| $84FCD9 | `FILE_84FCD9` | 280 | 44 | 44 | +0 | `rle_length_segmentation` |
| $84FD62 | `FILE_84FD62` | 280 | 77 | 77 | +0 | `rle_length_segmentation` |
| $A3804B | `FILE_A3804B` | 704 | 270 | 271 | +1 | `lz_at_eof` |
| $A389C9 | `FILE_A389C9` | 2,566 | 135 | 149 | +14 | `raw_copy_segmentation` |
| $98C53C | `VRAM_98C53C` | 2,048 | 1,338 | 1,389 | +51 | `lz_from_initial_zero_window` |
| $A3BB51 | `FILE_A3BB51` | 3,078 | 233 | 234 | +1 | `raw_copy_segmentation` |
| $A48378 | `VRAM_A48378` | 8,192 | 4,566 | 4,687 | +121 | `raw_copy_segmentation` |
| $A2C82F | `FILE_A2C82F` | 292 | 50 | 55 | +5 | `lz_from_initial_zero_window` |
| $A3E5DF | `FILE_A3E5DF` | 224 | 59 | 58 | -1 | `lz_from_initial_zero_window` |
| $A3E61A | `FILE_A3E61A` | 320 | 182 | 187 | +5 | `raw_copy_segmentation` |
| $A3EBDE | `FILE_A3EBDE` | 1,030 | 94 | 95 | +1 | `raw_copy_segmentation` |
| $A3EC3C | `VRAM_A3EC3C` | 2,048 | 241 | 244 | +3 | `lz_at_eof` |
| $A3F27B | `FILE_A3F27B` | 1,542 | 125 | 127 | +2 | `raw_copy_segmentation` |
| $A3F2F8 | `VRAM_A3F2F8` | 2,048 | 321 | 344 | +23 | `lz_at_eof` |
| $A3F439 | `VRAM_A3F439` | 2,048 | 215 | 228 | +13 | `lz_at_eof` |
| $A3F510 | `FILE_A3F510` | 320 | 168 | 169 | +1 | `lz_at_eof` |
| $A3FAB4 | `FILE_A3FAB4` | 1,030 | 68 | 69 | +1 | `raw_copy_segmentation` |
| $A3FBD5 | `FILE_A3FBD5` | 256 | 22 | 23 | +1 | `lz_at_eof` |
| $A7C970 | `VRAM_A7C970` | 4,992 | 1,503 | 1,503 | +0 | `rle_length_segmentation` |
| $A7CF4F | `VRAM_A7CF4F` | 4,096 | 595 | 619 | +24 | `lz_at_eof` |
| $A4806B | `FILE_A4806B` | 228 | 17 | 18 | +1 | `lz_at_eof` |
| $A4807C | `FILE_A4807C` | 384 | 111 | 112 | +1 | `lz_at_eof` |
| $A48112 | `FILE_A48112` | 1,542 | 64 | 80 | +16 | `raw_copy_segmentation` |
| $A48178 | `VRAM_A48178` | 2,048 | 225 | 236 | +11 | `lz_at_eof` |
| $A48259 | `VRAM_A48259` | 2,048 | 287 | 313 | +26 | `raw_copy_segmentation` |
| $A68000 | `FILE_A68000` | 192 | 70 | 70 | +0 | `raw_copy_segmentation` |
| $A5FEB4 | `FILE_A5FEB4` | 164 | 47 | 50 | +3 | `lz_from_initial_zero_window` |
| $A68292 | `VRAM_A68292` | 2,048 | 250 | 270 | +20 | `raw_copy_segmentation` |
| $A6838C | `VRAM_A6838C` | 2,048 | 304 | 331 | +27 | `raw_copy_segmentation` |
| $A5FF3F | `FILE_A5FF3F` | 252 | 47 | 46 | -1 | `lz_from_initial_zero_window` |
| $AA94FE | `VRAM_AA94FE` | 1,024 | 649 | 690 | +41 | `raw_copy_segmentation` |
| $A688C7 | `FILE_A688C7` | 640 | 199 | 200 | +1 | `lz_at_eof` |
| $A68C11 | `FILE_A68C11` | 576 | 222 | 241 | +19 | `lz_vs_rle_selection` |
| $A69981 | `FILE_A69981` | 940 | 131 | 171 | +40 | `rle_length_segmentation` |
| $A6A217 | `FILE_A6A217` | 2,310 | 109 | 125 | +16 | `raw_copy_segmentation` |
| $A6A3A5 | `FILE_A6A3A5` | 576 | 247 | 254 | +7 | `raw_copy_segmentation` |
| $A6A49C | `FILE_A6A49C` | 640 | 291 | 298 | +7 | `raw_copy_segmentation` |
| $A6B1C0 | `VRAM_A6B1C0` | 352 | 213 | 243 | +30 | `raw_copy_segmentation` |
| $A6AAE3 | `FILE_A6AAE3` | 2,310 | 124 | 140 | +16 | `raw_copy_segmentation` |
| $A6AB5F | `FILE_A6AB5F` | 640 | 270 | 285 | +15 | `raw_copy_segmentation` |
| $A6AD54 | `FILE_A6AD54` | 2,310 | 85 | 101 | +16 | `raw_copy_segmentation` |
| $A480EB | `FILE_A480EB` | 256 | 39 | 40 | +1 | `lz_from_initial_zero_window` |
| $A6B322 | `FILE_A6B322` | 900 | 145 | 157 | +12 | `lz_from_initial_zero_window` |
| $A6B3B3 | `VRAM_A6B3B3` | 2,048 | 871 | 872 | +1 | `lz_at_eof` |
| $AA9041 | `VRAM_AA9041` | 1,536 | 1,042 | 1,086 | +44 | `lz_from_initial_zero_window` |
| $A6B7C3 | `VRAM_A6B7C3` | 2,048 | 881 | 888 | +7 | `lz_at_eof` |
| $A6BC3D | `FILE_A6BC3D` | 384 | 169 | 176 | +7 | `raw_copy_segmentation` |
| $A6BCE6 | `FILE_A6BCE6` | 320 | 157 | 164 | +7 | `raw_copy_segmentation` |
| $A6C8A3 | `FILE_A6C8A3` | 1,024 | 160 | 174 | +14 | `lz_from_initial_zero_window` |
| $A6CADF | `VRAM_A6CADF` | 2,048 | 895 | 902 | +7 | `lz_at_eof` |
| $A7B0A1 | `FILE_A7B0A1` | 448 | 242 | 248 | +6 | `lz_at_eof` |
| $A7B907 | `FILE_A7B907` | 708 | 97 | 98 | +1 | `lz_from_initial_zero_window` |
| $A7B968 | `FILE_A7B968` | 832 | 506 | 506 | +0 | `two_byte_command_after_raw31` |
| $A7BB62 | `FILE_A7BB62` | 3,078 | 202 | 203 | +1 | `raw_copy_segmentation` |
| $A1FA10 | `FILE_A1FA10` | 1,542 | 110 | 111 | +1 | `raw_copy_segmentation` |
| $A7BD37 | `FILE_A7BD37` | 192 | 97 | 98 | +1 | `raw_copy_segmentation` |
| $A7BD98 | `FILE_A7BD98` | 384 | 167 | 167 | +0 | `raw_copy_segmentation` |
| $A1FA7E | `FILE_A1FA7E` | 1,286 | 84 | 85 | +1 | `raw_copy_segmentation` |
| $91FB8B | `VRAM_91FB8B` | 2,048 | 841 | 859 | +18 | `raw_copy_segmentation` |
| $A7C21E | `FILE_A7C21E` | 512 | 352 | 352 | +0 | `two_byte_command_after_raw31` |
| $A7C83C | `FILE_A7C83C` | 460 | 68 | 73 | +5 | `lz_from_initial_zero_window` |
| $A7C880 | `VRAM_A7C880` | 2,048 | 240 | 267 | +27 | `raw_copy_segmentation` |
| $B2FD4F | `FILE_B2FD4F` | 2,054 | 130 | 131 | +1 | `raw_copy_segmentation` |
| $AFD52F | `VRAM_AFD52F` | 2,048 | 375 | 401 | +26 | `lz_at_eof` |
| $ABFD14 | `VRAM_ABFD14` | 1,024 | 694 | 706 | +12 | `raw_copy_segmentation` |
| $BFB659 | `VRAM_BFB659` | 2,048 | 162 | 185 | +23 | `raw_copy_segmentation` |
| $ABB482 | `VRAM_ABB482` | 7,616 | 3,091 | 3,091 | +0 | `lz_vs_rle_selection` |
| $B1CF15 | `VRAM_B1CF15` | 3,648 | 1,915 | 1,929 | +14 | `lz_from_initial_zero_window` |
| $ABC1E5 | `FILE_ABC1E5` | 960 | 303 | 311 | +8 | `lz_at_eof` |
| $ABC095 | `VRAM_ABC095` | 16,384 | 336 | 336 | +0 | `rle_length_segmentation` |
| $9FE6DB | `FILE_9FE6DB` | 518 | 48 | 49 | +1 | `raw_copy_segmentation` |
| $B28000 | `FILE_B28000` | 774 | 49 | 50 | +1 | `raw_copy_segmentation` |
| $ABFFCA | `FILE_ABFFCA` | 518 | 42 | 43 | +1 | `raw_copy_segmentation` |
| $B0BB1A | `VRAM_B0BB1A` | 2,048 | 363 | 387 | +24 | `lz_at_eof` |
| $B0C88D | `FILE_B0C88D` | 824 | 158 | 176 | +18 | `rle_length_segmentation` |
| $B0C92B | `VRAM_B0C92B` | 2,048 | 1,210 | 1,215 | +5 | `two_byte_command_after_raw31` |
| $B0D55B | `FILE_B0D55B` | 1,030 | 106 | 107 | +1 | `raw_copy_segmentation` |
| $B1D690 | `VRAM_B1D690` | 2,048 | 1,524 | 1,542 | +18 | `raw_copy_segmentation` |
| $B0D7E1 | `FILE_B0D7E1` | 1,030 | 142 | 143 | +1 | `raw_copy_segmentation` |
| $B0D8BB | `FILE_B0D8BB` | 192 | 44 | 44 | +0 | `raw_copy_segmentation` |
| $B0B9A0 | `FILE_B0B9A0` | 944 | 189 | 193 | +4 | `lz_from_initial_zero_window` |
| $B0E545 | `FILE_B0E545` | 944 | 208 | 231 | +23 | `lz_vs_rle_selection` |
| $B0E68E | `VRAM_B0E68E` | 2,048 | 706 | 755 | +49 | `raw_copy_segmentation` |
| $B0F4F0 | `VRAM_B0F4F0` | 2,048 | 369 | 397 | +28 | `raw_copy_segmentation` |
| $B0F4A7 | `FILE_B0F4A7` | 192 | 73 | 79 | +6 | `raw_copy_segmentation` |
| $B0F422 | `FILE_B0F422` | 872 | 133 | 166 | +33 | `lz_vs_rle_selection` |
| $BFAE19 | `FILE_BFAE19` | 236 | 69 | 79 | +10 | `lz_from_initial_zero_window` |
| $B3F8C2 | `FILE_B3F8C2` | 320 | 158 | 159 | +1 | `lz_at_eof` |
| $B2FF54 | `FILE_B2FF54` | 1,030 | 68 | 79 | +11 | `raw_copy_segmentation` |
| $B4E48C | `FILE_B4E48C` | 908 | 201 | 229 | +28 | `lz_vs_rle_selection` |
| $BF8A6F | `VRAM_BF8A6F` | 2,048 | 338 | 350 | +12 | `lz_at_eof` |
| $AA9453 | `VRAM_AA9453` | 1,024 | 171 | 179 | +8 | `raw_copy_segmentation` |
| $B3F88B | `FILE_B3F88B` | 518 | 55 | 56 | +1 | `raw_copy_segmentation` |
| $B4B9C2 | `FILE_B4B9C2` | 320 | 107 | 108 | +1 | `lz_at_eof` |
| $B4C7A0 | `FILE_B4C7A0` | 1,030 | 66 | 67 | +1 | `raw_copy_segmentation` |
| $B4C714 | `FILE_B4C714` | 1,000 | 140 | 169 | +29 | `lz_vs_rle_selection` |
| $B4C87C | `FILE_B4C87C` | 262 | 29 | 30 | +1 | `raw_copy_segmentation` |
| $AAA659 | `VRAM_AAA659` | 1,536 | 928 | 946 | +18 | `raw_copy_segmentation` |
| $B4FF4A | `FILE_B4FF4A` | 640 | 86 | 86 | +0 | `lz_from_initial_zero_window` |
| $B2FEEF | `FILE_B2FEEF` | 1,030 | 58 | 59 | +1 | `raw_copy_segmentation` |
| $92F70E | `FILE_92F70E` | 1,542 | 153 | 154 | +1 | `raw_copy_segmentation` |
| $B4CB0B | `FILE_B4CB0B` | 256 | 108 | 112 | +4 | `lz_at_eof` |
| $B4CC02 | `FILE_B4CC02` | 640 | 325 | 331 | +6 | `raw_copy_segmentation` |
| $B4CD47 | `FILE_B4CD47` | 256 | 122 | 123 | +1 | `lz_at_eof` |
| $B2FA99 | `VRAM_B2FA99` | 1,024 | 694 | 713 | +19 | `raw_copy_segmentation` |
| $BFEFB2 | `FILE_BFEFB2` | 2,566 | 211 | 233 | +22 | `raw_copy_segmentation` |
| $B4D873 | `FILE_B4D873` | 888 | 164 | 185 | +21 | `lz_vs_rle_selection` |
| $BFF085 | `FILE_BFF085` | 1,542 | 128 | 130 | +2 | `raw_copy_segmentation` |
| $B4D9E1 | `FILE_B4D9E1` | 256 | 66 | 73 | +7 | `lz_at_eof` |
| $BFEF7E | `FILE_BFEF7E` | 1,030 | 52 | 54 | +2 | `raw_copy_segmentation` |
| $B4F011 | `FILE_B4F011` | 780 | 131 | 136 | +5 | `lz_from_initial_zero_window` |
| $BF8BC1 | `VRAM_BF8BC1` | 2,048 | 467 | 468 | +1 | `raw_copy_segmentation` |
| $AEC5C1 | `VRAM_AEC5C1` | 1,024 | 402 | 437 | +35 | `lz_from_initial_zero_window` |
| $BFEC5C | `FILE_BFEC5C` | 192 | 90 | 99 | +9 | `raw_copy_segmentation` |
| $BEDCC4 | `FILE_BEDCC4` | 104 | 25 | 36 | +11 | `lz_vs_rle_selection` |
| $BFEDCC | `FILE_BFEDCC` | 36 | 9 | 11 | +2 | `lz_at_eof` |
| $92B0C8 | `FILE_92B0C8` | 320 | 166 | 174 | +8 | `lz_at_eof` |
| $92BB74 | `FILE_92BB74` | 1,024 | 133 | 139 | +6 | `lz_from_initial_zero_window` |
| $BF9A2E | `VRAM_BF9A2E` | 2,048 | 617 | 644 | +27 | `raw_copy_segmentation` |
| $BF9C97 | `VRAM_BF9C97` | 2,048 | 536 | 547 | +11 | `lz_at_eof` |
| $AEFDAF | `FILE_AEFDAF` | 1,030 | 60 | 61 | +1 | `raw_copy_segmentation` |
| $92BCB9 | `FILE_92BCB9` | 320 | 161 | 169 | +8 | `lz_at_eof` |
| $9FE400 | `VRAM_9FE400` | 1,024 | 731 | 742 | +11 | `rle_type_selection` |
| $92C7DC | `FILE_92C7DC` | 936 | 127 | 130 | +3 | `rle_length_segmentation` |
| $92D4AF | `FILE_92D4AF` | 968 | 107 | 124 | +17 | `lz_from_initial_zero_window` |
| $92D51A | `FILE_92D51A` | 320 | 182 | 183 | +1 | `raw_copy_segmentation` |
| $92D5D0 | `FILE_92D5D0` | 512 | 233 | 234 | +1 | `lz_at_eof` |
| $92D722 | `FILE_92D722` | 384 | 126 | 127 | +1 | `lz_vs_rle_selection` |
| $92DFA7 | `FILE_92DFA7` | 728 | 114 | 127 | +13 | `lz_from_initial_zero_window` |
| $BFA11B | `VRAM_BFA11B` | 2,048 | 536 | 547 | +11 | `lz_at_eof` |
| $92EB36 | `FILE_92EB36` | 668 | 99 | 130 | +31 | `lz_from_initial_zero_window` |
| $91E709 | `FILE_91E709` | 640 | 227 | 236 | +9 | `lz_at_eof` |
| $92ACD3 | `VRAM_92ACD3` | 1,536 | 1,013 | 1,019 | +6 | `rle_type_selection` |
| $BFA333 | `FILE_BFA333` | 192 | 85 | 87 | +2 | `short_zero_pairs` |
| $BFA6C1 | `FILE_BFA6C1` | 176 | 35 | 45 | +10 | `lz_from_initial_zero_window` |
| $BFA6E4 | `VRAM_BFA6E4` | 2,048 | 848 | 849 | +1 | `lz_at_eof` |
| $BFA3F0 | `FILE_BFA3F0` | 192 | 66 | 75 | +9 | `raw_copy_segmentation` |
| $BFAA34 | `FILE_BFAA34` | 256 | 95 | 97 | +2 | `lz_at_eof` |
| $B1FCB0 | `FILE_B1FCB0` | 774 | 62 | 63 | +1 | `raw_copy_segmentation` |
| $B1EC55 | `VRAM_B1EC55` | 1,376 | 919 | 921 | +2 | `raw_copy_segmentation` |
| $BFAE97 | `FILE_BFAE97` | 256 | 101 | 100 | -1 | `raw_copy_segmentation` |
| $BFF105 | `FILE_BFF105` | 774 | 79 | 80 | +1 | `raw_copy_segmentation` |
| $BFB2C8 | `FILE_BFB2C8` | 256 | 72 | 76 | +4 | `lz_from_initial_zero_window` |
| $AAE677 | `VRAM_AAE677` | 2,048 | 478 | 500 | +22 | `lz_at_eof` |
| $AAE855 | `VRAM_AAE855` | 2,048 | 404 | 426 | +22 | `lz_at_eof` |
| $AAE9E9 | `VRAM_AAE9E9` | 2,048 | 195 | 217 | +22 | `lz_at_eof` |
| $BED8F8 | `FILE_BED8F8` | 2,048 | 177 | 200 | +23 | `lz_at_eof` |
| $BE8922 | `VRAM_BE8922` | 15,680 | 5,569 | 5,569 | +0 | `rle_length_segmentation` |
| $AAFDFB | `FILE_AAFDFB` | 60 | 17 | 17 | +0 | `lz_from_initial_zero_window` |
| $92EE6C | `FILE_92EE6C` | 512 | 25 | 24 | -1 | `lz_from_initial_zero_window` |
| $92F7A7 | `VRAM_92F7A7` | 2,048 | 460 | 478 | +18 | `lz_at_eof` |
| $84FE44 | `FILE_84FE44` | 216 | 57 | 59 | +2 | `lz_at_eof` |
| $84FE7D | `FILE_84FE7D` | 216 | 53 | 55 | +2 | `lz_at_eof` |
| $A5C304 | `FILE_A5C304` | 1,856 | 807 | 824 | +17 | `lz_vs_rle_selection` |
| $A5E951 | `FILE_A5E951` | 8,198 | 1,583 | 1,603 | +20 | `raw_copy_segmentation` |
| $A4AC43 | `VRAM_A4AC43` | 3,360 | 2,353 | 2,386 | +33 | `raw_copy_segmentation` |
| $A4D035 | `VRAM_A4D035` | 2,048 | 1,774 | 1,772 | -2 | `rle_type_selection` |
| $A5EF80 | `FILE_A5EF80` | 384 | 188 | 198 | +10 | `lz_vs_rle_selection` |
| $A5F955 | `FILE_A5F955` | 1,286 | 269 | 271 | +2 | `raw_copy_segmentation` |
| $998E64 | `VRAM_998E64` | 1,024 | 355 | 363 | +8 | `raw_copy_segmentation` |
| $A5FAB8 | `FILE_A5FAB8` | 518 | 73 | 74 | +1 | `raw_copy_segmentation` |
| $A6F430 | `VRAM_A6F430` | 2,048 | 1,730 | 1,742 | +12 | `raw_copy_segmentation` |
| $A78A57 | `FILE_A78A57` | 320 | 194 | 195 | +1 | `two_byte_command_after_raw31` |
| $A79578 | `FILE_A79578` | 1,030 | 220 | 220 | +0 | `raw_copy_segmentation` |
| $998FC7 | `VRAM_998FC7` | 1,024 | 867 | 873 | +6 | `raw_copy_segmentation` |
| $A79654 | `FILE_A79654` | 448 | 268 | 275 | +7 | `raw_copy_segmentation` |
| $A797E8 | `FILE_A797E8` | 1,542 | 316 | 317 | +1 | `raw_copy_segmentation` |
| $B2F6BA | `VRAM_B2F6BA` | 896 | 490 | 492 | +2 | `lz_from_initial_zero_window` |
| $A7996D | `FILE_A7996D` | 518 | 112 | 111 | -1 | `raw_copy_segmentation` |
| $A799DD | `FILE_A799DD` | 448 | 226 | 250 | +24 | `lz_vs_rle_selection` |
| $A79ABF | `FILE_A79ABF` | 448 | 83 | 87 | +4 | `lz_at_eof` |
| $A7A3D2 | `FILE_A7A3D2` | 1,542 | 271 | 271 | +0 | `raw_copy_segmentation` |
| $B1E8FB | `VRAM_B1E8FB` | 1,024 | 858 | 864 | +6 | `raw_copy_segmentation` |
| $A7A4E1 | `FILE_A7A4E1` | 512 | 190 | 192 | +2 | `lz_at_eof` |
| $A7A59F | `FILE_A7A59F` | 640 | 270 | 268 | -2 | `rle_length_segmentation` |
| $A7A6AD | `FILE_A7A6AD` | 2,310 | 347 | 347 | +0 | `raw_copy_segmentation` |
| $A7A808 | `FILE_A7A808` | 960 | 219 | 228 | +9 | `lz_vs_rle_selection` |
| $A7AE70 | `FILE_A7AE70` | 4,614 | 561 | 571 | +10 | `raw_copy_segmentation` |
| $A4F566 | `VRAM_A4F566` | 2,688 | 2,408 | 2,458 | +50 | `lz_vs_rle_selection` |
| $AD8000 | `FILE_AD8000` | 1,856 | 848 | 862 | +14 | `raw_copy_segmentation` |
| $ADA3F9 | `FILE_ADA3F9` | 7,174 | 1,689 | 1,705 | +16 | `raw_copy_segmentation` |
| $B1DC84 | `VRAM_B1DC84` | 1,024 | 917 | 927 | +10 | `short_zero_pairs` |
| $ADB53D | `FILE_ADB53D` | 1,542 | 367 | 368 | +1 | `raw_copy_segmentation` |
| $ACFBB8 | `FILE_ACFBB8` | 1,542 | 365 | 369 | +4 | `raw_copy_segmentation` |
| $ADB6AC | `FILE_ADB6AC` | 640 | 326 | 330 | +4 | `raw_copy_segmentation` |
| $ADB7F2 | `FILE_ADB7F2` | 640 | 275 | 276 | +1 | `lz_at_eof` |
| $ADBFAD | `FILE_ADBFAD` | 2,310 | 272 | 279 | +7 | `raw_copy_segmentation` |
| $B4FCC9 | `FILE_B4FCC9` | 1,542 | 309 | 310 | +1 | `raw_copy_segmentation` |
| $ADCA8B | `FILE_ADCA8B` | 320 | 163 | 168 | +5 | `lz_at_eof` |
| $ADD401 | `FILE_ADD401` | 1,030 | 242 | 242 | +0 | `raw_copy_segmentation` |
| $AEFD64 | `FILE_AEFD64` | 192 | 75 | 77 | +2 | `lz_at_eof` |
| $A5FF6E | `FILE_A5FF6E` | 518 | 127 | 127 | +0 | `raw_copy_segmentation` |
| $ADD4F3 | `FILE_ADD4F3` | 1,030 | 184 | 205 | +21 | `raw_copy_segmentation` |
| $ADD5AB | `FILE_ADD5AB` | 518 | 158 | 160 | +2 | `raw_copy_segmentation` |
| $AEFDEB | `FILE_AEFDEB` | 1,280 | 507 | 518 | +11 | `raw_copy_segmentation` |
| $ADF92D | `FILE_ADF92D` | 10,246 | 1,437 | 1,438 | +1 | `raw_copy_segmentation` |
| $B2F8A4 | `FILE_B2F8A4` | 1,280 | 501 | 516 | +15 | `raw_copy_segmentation` |
| $B29247 | `FILE_B29247` | 10,246 | 1,406 | 1,407 | +1 | `raw_copy_segmentation` |
| $B298B4 | `FILE_B298B4` | 1,030 | 251 | 259 | +8 | `raw_copy_segmentation` |
| $B299E2 | `FILE_B299E2` | 1,030 | 225 | 233 | +8 | `raw_copy_segmentation` |
| $AADCA5 | `VRAM_AADCA5` | 1,024 | 694 | 713 | +19 | `raw_copy_segmentation` |
| $B29AC3 | `FILE_B29AC3` | 320 | 114 | 125 | +11 | `lz_vs_rle_selection` |
| $B2A3A1 | `FILE_B2A3A1` | 1,030 | 295 | 296 | +1 | `raw_copy_segmentation` |
| $B2FDD1 | `FILE_B2FDD1` | 320 | 121 | 132 | +11 | `lz_vs_rle_selection` |
| $B2A566 | `FILE_B2A566` | 1,030 | 255 | 256 | +1 | `raw_copy_segmentation` |
| $AAEE87 | `FILE_AAEE87` | 262 | 60 | 60 | +0 | `raw_copy_segmentation` |
| $ABDB61 | `VRAM_ABDB61` | 1,792 | 1,439 | 1,443 | +4 | `raw_copy_segmentation` |
| $B2ABDC | `FILE_B2ABDC` | 262 | 60 | 68 | +8 | `raw_copy_segmentation` |
| $B2AC18 | `FILE_B2AC18` | 512 | 99 | 106 | +7 | `raw_copy_segmentation` |
| $B2AC7B | `FILE_B2AC7B` | 640 | 344 | 347 | +3 | `raw_copy_segmentation` |
| $B1FAC2 | `FILE_B1FAC2` | 2,566 | 483 | 489 | +6 | `raw_copy_segmentation` |
| $B2ADD3 | `FILE_B2ADD3` | 512 | 94 | 101 | +7 | `raw_copy_segmentation` |
| $B2AE31 | `FILE_B2AE31` | 640 | 351 | 361 | +10 | `lz_at_eof` |
| $B2AF90 | `FILE_B2AF90` | 2,566 | 458 | 470 | +12 | `raw_copy_segmentation` |
| $B2B4D2 | `FILE_B2B4D2` | 1,542 | 162 | 162 | +0 | `raw_copy_segmentation` |
| $B2B697 | `FILE_B2B697` | 1,542 | 325 | 325 | +0 | `raw_copy_segmentation` |
| $B48000 | `VRAM_B48000` | 3,072 | 2,414 | 2,434 | +20 | `raw_copy_segmentation` |
| $B2BD73 | `FILE_B2BD73` | 2,054 | 370 | 372 | +2 | `raw_copy_segmentation` |
| $B2BEE5 | `FILE_B2BEE5` | 192 | 54 | 61 | +7 | `raw_copy_segmentation` |
| $B2BF4F | `FILE_B2BF4F` | 518 | 71 | 72 | +1 | `raw_copy_segmentation` |
| $B2BFDC | `FILE_B2BFDC` | 518 | 75 | 76 | +1 | `raw_copy_segmentation` |
| $B2C027 | `FILE_B2C027` | 192 | 52 | 52 | +0 | `short_zero_pairs` |
| $B2C0AA | `FILE_B2C0AA` | 518 | 86 | 87 | +1 | `raw_copy_segmentation` |
| $B2C100 | `FILE_B2C100` | 1,600 | 506 | 518 | +12 | `lz_vs_rle_selection` |
| $AEF55D | `FILE_AEF55D` | 1,600 | 918 | 926 | +8 | `raw_copy_segmentation` |
| $B2CF1C | `FILE_B2CF1C` | 6,150 | 915 | 929 | +14 | `raw_copy_segmentation` |
| $B2D2DC | `FILE_B2D2DC` | 384 | 96 | 96 | +0 | `lz_vs_rle_selection` |
| $B2D33C | `FILE_B2D33C` | 1,542 | 132 | 133 | +1 | `raw_copy_segmentation` |
| $B2D3FA | `FILE_B2D3FA` | 262 | 43 | 42 | -1 | `raw_copy_segmentation` |
| $9EFECC | `FILE_9EFECC` | 518 | 122 | 123 | +1 | `raw_copy_segmentation` |
| $B2D89C | `FILE_B2D89C` | 320 | 110 | 114 | +4 | `lz_vs_rle_selection` |
| $B2D962 | `FILE_B2D962` | 1,030 | 134 | 135 | +1 | `raw_copy_segmentation` |
| $B38000 | `FILE_B38000` | 320 | 166 | 180 | +14 | `raw_copy_segmentation` |
| $B2DA66 | `FILE_B2DA66` | 1,030 | 210 | 211 | +1 | `raw_copy_segmentation` |
| $B2DB38 | `FILE_B2DB38` | 320 | 198 | 207 | +9 | `lz_vs_rle_selection` |
| $B2DCB6 | `FILE_B2DCB6` | 1,030 | 237 | 238 | +1 | `raw_copy_segmentation` |
| $B2DE98 | `FILE_B2DE98` | 774 | 200 | 200 | +0 | `raw_copy_segmentation` |
| $B2DFCA | `FILE_B2DFCA` | 518 | 142 | 142 | +0 | `raw_copy_segmentation` |
| $9CFA92 | `VRAM_9CFA92` | 992 | 702 | 713 | +11 | `rle_type_selection` |
| $AFE57C | `FILE_AFE57C` | 704 | 264 | 272 | +8 | `lz_at_eof` |
| $AFEEA9 | `FILE_AFEEA9` | 704 | 374 | 382 | +8 | `lz_at_eof` |
| $AFF458 | `FILE_AFF458` | 2,566 | 468 | 468 | +0 | `raw_copy_segmentation` |
| $B3A4D8 | `VRAM_B3A4D8` | 6,016 | 4,567 | 4,614 | +47 | `lz_from_initial_zero_window` |
| $B0871B | `FILE_B0871B` | 11,270 | 1,141 | 1,159 | +18 | `raw_copy_segmentation` |
| $B0845A | `VRAM_B0845A` | 2,048 | 705 | 712 | +7 | `raw_copy_segmentation` |
| $BEC277 | `VRAM_BEC277` | 1,984 | 252 | 257 | +5 | `rle_type_selection` |
| $928000 | `FILE_928000` | 192 | 72 | 75 | +3 | `raw_copy_segmentation` |
| $A9EBED | `FILE_A9EBED` | 518 | 109 | 110 | +1 | `raw_copy_segmentation` |
| $A98000 | `FILE_A98000` | 192 | 59 | 67 | +8 | `raw_copy_segmentation` |
| $A98073 | `FILE_A98073` | 518 | 81 | 81 | +0 | `raw_copy_segmentation` |
| $A9893D | `FILE_A9893D` | 4,102 | 484 | 485 | +1 | `raw_copy_segmentation` |
| $A9934A | `FILE_A9934A` | 2,566 | 259 | 258 | -1 | `raw_copy_segmentation` |
| $A99C6F | `FILE_A99C6F` | 2,054 | 166 | 181 | +15 | `raw_copy_segmentation` |
| $A999B0 | `VRAM_A999B0` | 2,048 | 703 | 715 | +12 | `lz_vs_rle_selection` |
| $9FE70B | `FILE_9FE70B` | 518 | 58 | 73 | +15 | `raw_copy_segmentation` |
| $96D05B | `FILE_96D05B` | 518 | 61 | 78 | +17 | `raw_copy_segmentation` |
| $AED032 | `VRAM_AED032` | 8,096 | 4,336 | 4,498 | +162 | `raw_copy_segmentation` |
| $A28BCF | `FILE_A28BCF` | 262 | 42 | 49 | +7 | `raw_copy_segmentation` |
| $A28BF9 | `FILE_A28BF9` | 262 | 30 | 36 | +6 | `raw_copy_segmentation` |
| $A28C17 | `FILE_A28C17` | 262 | 36 | 37 | +1 | `raw_copy_segmentation` |
| $A28C3B | `FILE_A28C3B` | 262 | 36 | 42 | +6 | `raw_copy_segmentation` |
| $99F8C6 | `FILE_99F8C6` | 262 | 30 | 46 | +16 | `raw_copy_segmentation` |
| $BEBCD7 | `VRAM_BEBCD7` | 1,984 | 1,410 | 1,430 | +20 | `raw_copy_segmentation` |
| $99F913 | `FILE_99F913` | 262 | 32 | 47 | +15 | `raw_copy_segmentation` |
| $99F95F | `FILE_99F95F` | 262 | 44 | 45 | +1 | `raw_copy_segmentation` |
| $9DE60B | `FILE_9DE60B` | 262 | 60 | 60 | +0 | `raw_copy_segmentation` |
| $AAEAD7 | `FILE_AAEAD7` | 518 | 79 | 85 | +6 | `raw_copy_segmentation` |
| $BEC95A | `VRAM_BEC95A` | 1,504 | 865 | 876 | +11 | `raw_copy_segmentation` |
| $AAEAAC | `FILE_AAEAAC` | 262 | 43 | 50 | +7 | `raw_copy_segmentation` |
| $9DE91E | `VRAM_9DE91E` | 2,336 | 1,652 | 1,686 | +34 | `rle_length_segmentation` |
| $A5BA3C | `VRAM_A5BA3C` | 2,048 | 903 | 983 | +80 | `raw_copy_segmentation` |
| $A5BDC3 | `VRAM_A5BDC3` | 2,048 | 869 | 955 | +86 | `raw_copy_segmentation` |
| $A5C128 | `VRAM_A5C128` | 2,048 | 259 | 299 | +40 | `lz_vs_rle_selection` |
| $A5C22B | `VRAM_A5C22B` | 2,048 | 217 | 242 | +25 | `lz_vs_rle_selection` |
| $A59A6F | `VRAM_A59A6F` | 2,048 | 242 | 252 | +10 | `lz_at_eof` |
| $A597F3 | `VRAM_A597F3` | 752 | 636 | 643 | +7 | `raw_copy_segmentation` |
| $ABCA74 | `VRAM_ABCA74` | 2,048 | 368 | 397 | +29 | `raw_copy_segmentation` |
| $ABDA4C | `VRAM_ABDA4C` | 2,048 | 277 | 310 | +33 | `lz_at_eof` |
| $B0FEA3 | `VRAM_B0FEA3` | 432 | 120 | 134 | +14 | `lz_vs_rle_selection` |
| $ABE1FB | `VRAM_ABE1FB` | 2,048 | 375 | 402 | +27 | `raw_copy_segmentation` |
| $ABF577 | `VRAM_ABF577` | 2,048 | 498 | 520 | +22 | `lz_at_eof` |
| $ABF2C9 | `VRAM_ABF2C9` | 1,024 | 686 | 698 | +12 | `raw_copy_segmentation` |
| $AE939E | `FILE_AE939E` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AE808E | `VRAM_AE808E` | 5,024 | 2,838 | 2,900 | +62 | `rle_length_segmentation` |
| $97CF7A | `VRAM_97CF7A` | 640 | 351 | 354 | +3 | `lz_from_initial_zero_window` |
| $AE9862 | `FILE_AE9862` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AE93C8 | `VRAM_AE93C8` | 1,856 | 720 | 741 | +21 | `lz_vs_rle_selection` |
| $AE9E8B | `FILE_AE9E8B` | 262 | 46 | 61 | +15 | `raw_copy_segmentation` |
| $AE988C | `VRAM_AE988C` | 1,760 | 911 | 964 | +53 | `lz_vs_rle_selection` |
| $AEA368 | `FILE_AEA368` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AEA885 | `FILE_AEA885` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AEB051 | `FILE_AEB051` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AEB6C2 | `FILE_AEB6C2` | 262 | 48 | 62 | +14 | `raw_copy_segmentation` |
| $AEB07B | `VRAM_AEB07B` | 1,856 | 989 | 1,029 | +40 | `raw_copy_segmentation` |
| $AEBB9A | `FILE_AEBB9A` | 262 | 40 | 55 | +15 | `raw_copy_segmentation` |
| $97DBEE | `VRAM_97DBEE` | 288 | 200 | 209 | +9 | `lz_from_initial_zero_window` |
| $AEBFFA | `FILE_AEBFFA` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $97DCB6 | `VRAM_97DCB6` | 640 | 349 | 360 | +11 | `lz_vs_rle_selection` |
| $97DE13 | `VRAM_97DE13` | 320 | 259 | 267 | +8 | `lz_from_initial_zero_window` |
| $AEE63B | `FILE_AEE63B` | 262 | 38 | 53 | +15 | `raw_copy_segmentation` |
| $AEEB1B | `FILE_AEEB1B` | 262 | 52 | 67 | +15 | `raw_copy_segmentation` |
| $AEEFDC | `FILE_AEEFDC` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AF89DD | `FILE_AF89DD` | 262 | 44 | 59 | +15 | `raw_copy_segmentation` |
| $AF9133 | `FILE_AF9133` | 262 | 40 | 55 | +15 | `raw_copy_segmentation` |
| $AF8A09 | `VRAM_AF8A09` | 1,824 | 1,143 | 1,156 | +13 | `short_zero_pairs` |
| $92F973 | `VRAM_92F973` | 288 | 240 | 241 | +1 | `lz_from_initial_zero_window` |
| $AF915B | `VRAM_AF915B` | 2,336 | 1,396 | 1,421 | +25 | `raw_copy_segmentation` |
| $AFA0F6 | `FILE_AFA0F6` | 262 | 48 | 72 | +24 | `raw_copy_segmentation` |
| $AF99F6 | `VRAM_AF99F6` | 1,920 | 1,037 | 1,065 | +28 | `lz_vs_rle_selection` |
| $AFA53F | `FILE_AFA53F` | 128 | 55 | 55 | +0 | `two_byte_command_after_raw31` |
| $AFA894 | `FILE_AFA894` | 262 | 38 | 53 | +15 | `raw_copy_segmentation` |
| $AFA126 | `VRAM_AFA126` | 1,920 | 1,049 | 1,102 | +53 | `raw_copy_segmentation` |
| $AFB101 | `FILE_AFB101` | 262 | 50 | 65 | +15 | `raw_copy_segmentation` |
| $97F975 | `VRAM_97F975` | 768 | 217 | 215 | -2 | `raw_copy_segmentation` |
| $AFB7DE | `FILE_AFB7DE` | 262 | 42 | 57 | +15 | `raw_copy_segmentation` |
| $AFB133 | `VRAM_AFB133` | 1,728 | 1,126 | 1,138 | +12 | `lz_vs_rle_selection` |
| $A0EBDA | `VRAM_A0EBDA` | 352 | 343 | 347 | +4 | `short_zero_pairs` |
| $AFBE30 | `FILE_AFBE30` | 262 | 40 | 55 | +15 | `raw_copy_segmentation` |
| $AFB808 | `VRAM_AFB808` | 2,304 | 1,535 | 1,590 | +55 | `raw_copy_segmentation` |
| $AEF03B | `FILE_AEF03B` | 262 | 44 | 65 | +21 | `raw_copy_segmentation` |
| $97FBE8 | `VRAM_97FBE8` | 160 | 119 | 117 | -2 | `raw_copy_segmentation` |
| $A88340 | `SPRITE_A88340` | 470 | 311 | 320 | +9 | `lz_at_eof` |
| $A8A31D | `SPRITE_A8A31D` | 858 | 491 | 493 | +2 | `lz_vs_rle_selection` |
| $A892F7 | `SPRITE_A892F7` | 530 | 296 | 303 | +7 | `raw_copy_segmentation` |
| $98BA75 | `FILE_98BA75` | 256 | 102 | 111 | +9 | `short_zero_pairs` |
| $A890F4 | `SPRITE_A890F4` | 195 | 120 | 130 | +10 | `lz_at_eof` |
| $A88AC2 | `SPRITE_A88AC2` | 359 | 214 | 214 | +0 | `rle_length_segmentation` |
| $A88B98 | `SPRITE_A88B98` | 169 | 137 | 141 | +4 | `lz_at_eof` |
| $A880CE | `SPRITE_A880CE` | 964 | 626 | 627 | +1 | `lz_at_eof` |
| $A8A508 | `SPRITE_A8A508` | 984 | 488 | 486 | -2 | `short_zero_pairs` |
| $A8A1EA | `SPRITE_A8A1EA` | 416 | 307 | 309 | +2 | `short_zero_pairs` |
| $A8B4B3 | `SPRITE_A8B4B3` | 1,313 | 699 | 700 | +1 | `lz_at_eof` |
| $A8AB73 | `SPRITE_A8AB73` | 238 | 189 | 202 | +13 | `lz_at_eof` |
| $A88804 | `SPRITE_A88804` | 223 | 171 | 173 | +2 | `lz_at_eof` |
| $A8A6F0 | `SPRITE_A8A6F0` | 421 | 302 | 304 | +2 | `lz_at_eof` |
| $A8A81E | `SPRITE_A8A81E` | 1,618 | 853 | 854 | +1 | `raw_copy_segmentation` |
| $A88C21 | `SPRITE_A88C21` | 247 | 181 | 186 | +5 | `lz_at_eof` |
| $A8941F | `SPRITE_A8941F` | 376 | 251 | 253 | +2 | `raw_copy_segmentation` |
| $A88D6E | `SPRITE_A88D6E` | 641 | 357 | 361 | +4 | `lz_at_eof` |
| $A8B45A | `SPRITE_A8B45A` | 115 | 89 | 90 | +1 | `short_zero_pairs` |
| $A888AF | `SPRITE_A888AF` | 148 | 129 | 133 | +4 | `raw_copy_segmentation` |
| $A8ADFB | `SPRITE_A8ADFB` | 1,194 | 666 | 676 | +10 | `raw_copy_segmentation` |
| $A88ED3 | `SPRITE_A88ED3` | 385 | 227 | 229 | +2 | `lz_at_eof` |
| $A886BF | `SPRITE_A886BF` | 416 | 325 | 327 | +2 | `lz_at_eof` |
| $A9FD63 | `SPRITE_A9FD63` | 94 | 84 | 87 | +3 | `lz_at_eof` |
| $A88CD6 | `SPRITE_A88CD6` | 188 | 152 | 155 | +3 | `lz_at_eof` |
| $A8B095 | `SPRITE_A8B095` | 1,232 | 828 | 831 | +3 | `lz_vs_rle_selection` |
| $A89F74 | `SPRITE_A89F74` | 1,425 | 630 | 636 | +6 | `raw_copy_segmentation` |
| $AAEEC3 | `SPRITE_AAEEC3` | 254 | 160 | 166 | +6 | `lz_at_eof` |
| $BEFCD2 | `SPRITE_BEFCD2` | 662 | 406 | 408 | +2 | `lz_at_eof` |
| $98E8B6 | `SPRITE_98E8B6` | 118 | 84 | 88 | +4 | `lz_at_eof` |
| $A7D275 | `SPRITE_A7D275` | 74 | 64 | 68 | +4 | `lz_at_eof` |
| $AEFCEC | `SPRITE_AEFCEC` | 155 | 120 | 122 | +2 | `lz_at_eof` |
| $A9FDB7 | `SPRITE_A9FDB7` | 87 | 76 | 78 | +2 | `lz_at_eof` |
| $99F98B | `SPRITE_99F98B` | 150 | 102 | 108 | +6 | `lz_at_eof` |
| $AEFAAE | `SPRITE_AEFAAE` | 74 | 74 | 75 | +1 | `raw_copy_segmentation` |
| $99F9F1 | `SPRITE_99F9F1` | 1,045 | 515 | 517 | +2 | `lz_at_eof` |
| $96C7B4 | `SPRITE_96C7B4` | 1,767 | 861 | 863 | +2 | `lz_at_eof` |
| $A8C2E9 | `SPRITE_A8C2E9` | 280 | 170 | 187 | +17 | `lz_at_eof` |
| $A8C393 | `SPRITE_A8C393` | 120 | 94 | 101 | +7 | `raw_copy_segmentation` |
| $A8C3F1 | `SPRITE_A8C3F1` | 328 | 189 | 195 | +6 | `short_zero_pairs` |
| $A8C1F8 | `SPRITE_A8C1F8` | 321 | 241 | 243 | +2 | `lz_at_eof` |
| $A8D850 | `SPRITE_A8D850` | 420 | 347 | 348 | +1 | `lz_at_eof` |
| $A8C4C3 | `SPRITE_A8C4C3` | 156 | 126 | 131 | +5 | `lz_at_eof` |
| $A8C97A | `SPRITE_A8C97A` | 30 | 23 | 24 | +1 | `short_zero_pairs` |
| $A8C64A | `SPRITE_A8C64A` | 934 | 702 | 703 | +1 | `short_zero_pairs` |
| $A8D486 | `SPRITE_A8D486` | 346 | 257 | 262 | +5 | `short_zero_pairs` |
| $A8D3CB | `SPRITE_A8D3CB` | 233 | 187 | 189 | +2 | `lz_at_eof` |
| $A8D1E8 | `SPRITE_A8D1E8` | 222 | 158 | 167 | +9 | `lz_at_eof` |
| $BED7CC | `SPRITE_BED7CC` | 51 | 49 | 50 | +1 | `raw_copy_segmentation` |
| $A8CB10 | `SPRITE_A8CB10` | 2,912 | 1,752 | 1,753 | +1 | `lz_at_eof` |
| $A8DCC2 | `SPRITE_A8DCC2` | 152 | 121 | 124 | +3 | `short_zero_pairs` |
| $A8D286 | `SPRITE_A8D286` | 183 | 152 | 155 | +3 | `raw_copy_segmentation` |
| $A8D31E | `SPRITE_A8D31E` | 200 | 173 | 175 | +2 | `lz_at_eof` |
| $A8D587 | `SPRITE_A8D587` | 973 | 713 | 714 | +1 | `short_zero_pairs` |
| $BED7FD | `SPRITE_BED7FD` | 423 | 251 | 253 | +2 | `raw_copy_segmentation` |
| $BEC373 | `SPRITE_BEC373` | 149 | 130 | 135 | +5 | `lz_at_eof` |
| $A8DE12 | `SPRITE_A8DE12` | 193 | 151 | 152 | +1 | `short_zero_pairs` |
| $98EB06 | `SPRITE_98EB06` | 450 | 322 | 323 | +1 | `short_zero_pairs` |
| $92FB86 | `SPRITE_92FB86` | 105 | 64 | 66 | +2 | `lz_at_eof` |
| $ACF9E8 | `SPRITE_ACF9E8` | 170 | 125 | 128 | +3 | `raw_copy_segmentation` |
| $98EA9F | `SPRITE_98EA9F` | 154 | 103 | 107 | +4 | `lz_at_eof` |
| $97FB54 | `SPRITE_97FB54` | 74 | 73 | 75 | +2 | `lz_at_eof` |
| $92FA63 | `SPRITE_92FA63` | 105 | 55 | 57 | +2 | `lz_at_eof` |
| $9A803C | `SPRITE_9A803C` | 118 | 72 | 76 | +4 | `lz_at_eof` |
| $9BEB52 | `SPRITE_9BEB52` | 113 | 88 | 90 | +2 | `lz_at_eof` |
| $BECCBB | `SPRITE_BECCBB` | 73 | 55 | 57 | +2 | `lz_at_eof` |
| $BEC83D | `SPRITE_BEC83D` | 426 | 285 | 293 | +8 | `short_zero_pairs` |
| $A8989D | `SPRITE_A8989D` | 3,719 | 1,237 | 1,238 | +1 | `short_zero_pairs` |

## エラー

なし。

## 代表的な最初のコマンド差

### $968AB9 `VRAM_968AB9` — `lz_from_initial_zero_window`

最初の差は展開オフセット `$12C`、コマンドindex 13。

元ROM:

```text
#11 in+$0028 out+$0121 lz len=7 window=$11F [14 fe]
#12 in+$002A out+$0128 raw len=4 data=61 04 62 04 [84 61 04 62 04]
#13 in+$002F out+$012C lz len=33 window=$3FC [7f db]
#14 in+$0031 out+$014D lz len=17 window=$10D [3c ec]
#15 in+$0033 out+$015E raw len=3 data=64 04 65 [83 64 04 65]
```

再圧縮:

```text
#11 in+$0028 out+$0121 lz len=7 window=$11F [14 fe]
#12 in+$002A out+$0128 raw len=4 data=61 04 62 04 [84 61 04 62 04]
#13 in+$002F out+$012C zero_rle len=5 [e3]
#14 in+$0030 out+$0131 lz len=33 window=$0F7 [7c d6]
#15 in+$0032 out+$0152 zero_pairs pairs=6 values=08 08 08 00 00 00 [a4 08 08 08 00 00 00]
```

### $968CAC `VRAM_968CAC` — `raw_copy_segmentation`

最初の差は展開オフセット `$0`、コマンドindex 0。

元ROM:

```text
#0 in+$0002 out+$0000 raw len=2 data=00 08 [82 00 08]
#1 in+$0005 out+$0002 lz len=33 window=$000 [7f df]
#2 in+$0007 out+$0023 lz len=29 window=$021 [6c 00]
```

再圧縮:

```text
#0 in+$0002 out+$0000 zero_pairs pairs=16 values=08 08 08 08 08 08 08 08 ... [ae 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08]
#1 in+$0013 out+$0020 zero_pairs pairs=16 values=08 08 08 08 08 08 08 08 ... [ae 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08 08]
#2 in+$0024 out+$0040 raw len=2 data=04 0c [82 04 0c]
```

### $A1878F `VRAM_A1878F` — `lz_vs_rle_selection`

最初の差は展開オフセット `$7F7`、コマンドindex 459。

元ROM:

```text
#457 in+$0637 out+$07F0 lz len=3 window=$24F [06 2e]
#458 in+$0639 out+$07F3 lz len=4 window=$2EC [0a cb]
#459 in+$063B out+$07F7 lz len=11 window=$3F5 [27 d4]
#460 in+$063D out+$0802 lz len=4 window=$232 [0a 11]
#461 in+$063F out+$0806 raw len=4 data=82 7f fa 07 [84 82 7f fa 07]
```

再圧縮:

```text
#457 in+$0637 out+$07F0 lz len=3 window=$24F [06 2e]
#458 in+$0639 out+$07F3 lz len=4 window=$2EC [0a cb]
#459 in+$063B out+$07F7 zero_pairs pairs=6 values=ff ff ff ff ff 81 [a4 ff ff ff ff ff 81]
#460 in+$0642 out+$0803 lz len=3 window=$233 [06 12]
#461 in+$0644 out+$0806 raw len=4 data=82 7f fa 07 [84 82 7f fa 07]
```

### $968CFB `VRAM_968CFB` — `rle_type_selection`

最初の差は展開オフセット `$2D1`、コマンドindex 10。

元ROM:

```text
#8 in+$004D out+$0291 zero_pairs pairs=16 values=10 08 08 08 10 20 00 10 ... [ae 10 08 08 08 10 20 00 10 54 38 38 54 10 00 00 00]
#9 in+$005E out+$02B1 zero_pairs pairs=16 values=10 10 7c 10 10 00 00 00 ... [ae 10 10 7c 10 10 00 00 00 00 00 00 00 30 30 60 00]
#10 in+$006F out+$02D1 zero_pairs pairs=16 values=00 00 7c 00 00 00 00 00 ... [ae 00 00 7c 00 00 00 00 00 00 00 00 00 30 30 00 00]
#11 in+$0080 out+$02F1 zero_pairs pairs=16 values=02 04 08 10 20 40 00 1c ... [ae 02 04 08 10 20 40 00 1c 26 63 63 63 22 1c 00 0c]
#12 in+$0091 out+$0311 zero_pairs pairs=16 values=1c 0c 0c 0c 0c 3f 00 3e ... [ae 1c 0c 0c 0c 0c 3f 00 3e 63 07 1e 3c 70 7f 00 3f]
```

再圧縮:

```text
#8 in+$004D out+$0291 zero_pairs pairs=16 values=10 08 08 08 10 20 00 10 ... [ae 10 08 08 08 10 20 00 10 54 38 38 54 10 00 00 00]
#9 in+$005E out+$02B1 zero_pairs pairs=16 values=10 10 7c 10 10 00 00 00 ... [ae 10 10 7c 10 10 00 00 00 00 00 00 00 30 30 60 00]
#10 in+$006F out+$02D1 zero_rle len=5 [e3]
#11 in+$0070 out+$02D6 lz len=2 window=$2B6 [02 95]
#12 in+$0072 out+$02D8 zero_rle len=18 [f0]
```

### $BFD894 `VRAM_BFD894` — `lz_at_eof`

最初の差は展開オフセット `$7FB`、コマンドindex 168。

元ROM:

```text
#166 in+$0249 out+$07B9 lz len=33 window=$3B7 [7f 96]
#167 in+$024B out+$07DA lz len=33 window=$3D8 [7f b7]
#168 in+$024D out+$07FB lz len=5 window=$3F9 [0f d8]
```

再圧縮:

```text
#166 in+$0249 out+$07B9 lz len=33 window=$3B7 [7f 96]
#167 in+$024B out+$07DA lz len=33 window=$3D8 [7f b7]
#168 in+$024D out+$07FB raw len=5 data=24 5d 24 5d 24 [85 24 5d 24 5d 24]
```

### $BFCD8F `VRAM_BFCD8F` — `two_byte_command_after_raw31`

最初の差は展開オフセット `$1F`、コマンドindex 1。

元ROM:

```text
#0 in+$0002 out+$0000 raw len=31 data=c7 0c c9 0c ca 0c cb 0c ... [9f c7 0c c9 0c ca 0c cb 0c cb 4c ca 4c c9 4c c7 4c c7 10 c9 10 ca 10 cb 10 cb 50 ca 50 c9 50 c7]
#1 in+$0022 out+$001F lz len=2 window=$01D [03 fc]
#2 in+$0024 out+$0021 raw len=31 data=14 c9 14 ca 14 cb 14 cb ... [9f 14 c9 14 ca 14 cb 14 cb 54 ca 54 c9 54 c7 54 c7 18 c9 18 ca 18 cb 18 cb 58 ca 58 c9 58 c7 58]
#3 in+$0044 out+$0040 lz len=33 window=$000 [7f df]
```

再圧縮:

```text
#0 in+$0002 out+$0000 raw len=31 data=c7 0c c9 0c ca 0c cb 0c ... [9f c7 0c c9 0c ca 0c cb 0c cb 4c ca 4c c9 4c c7 4c c7 10 c9 10 ca 10 cb 10 cb 50 ca 50 c9 50 c7]
#1 in+$0022 out+$001F raw len=31 data=50 c7 14 c9 14 ca 14 cb ... [9f 50 c7 14 c9 14 ca 14 cb 14 cb 54 ca 54 c9 54 c7 54 c7 18 c9 18 ca 18 cb 18 cb 58 ca 58 c9 58]
#2 in+$0042 out+$003E raw len=2 data=c7 58 [82 c7 58]
#3 in+$0045 out+$0040 lz len=33 window=$000 [7f df]
```

### $87FA5B `FILE_87FA5B` — `rle_length_segmentation`

最初の差は展開オフセット `$350`、コマンドindex 56。

元ROM:

```text
#54 in+$0110 out+$032E raw len=1 data=9f [81 9f]
#55 in+$0112 out+$032F lz len=33 window=$2EF [7e ce]
#56 in+$0114 out+$0350 zero_rle_ext len=209 [ff cf]
#57 in+$0116 out+$0421 zero_rle_ext len=176 [ff ae]
#58 in+$0118 out+$04D1 raw len=1 data=0c [81 0c]
```

再圧縮:

```text
#54 in+$0110 out+$032E raw len=1 data=9f [81 9f]
#55 in+$0112 out+$032F lz len=33 window=$2EF [7e ce]
#56 in+$0114 out+$0350 zero_rle_ext len=257 [ff ff]
#57 in+$0116 out+$0451 zero_rle_ext len=128 [ff 7e]
#58 in+$0118 out+$04D1 raw len=1 data=0c [81 0c]
```

### $98BB69 `VRAM_98BB69` — `short_zero_pairs`

最初の差は展開オフセット `$21`、コマンドindex 2。

元ROM:

```text
#0 in+$0002 out+$0000 zero_rle len=18 [f0]
#1 in+$0003 out+$0012 raw len=15 data=81 00 ff 00 1f e0 07 f8 ... [8f 81 00 ff 00 1f e0 07 f8 00 ff 2a ff 55 ff 7e]
#2 in+$0013 out+$0021 zero_pairs pairs=3 values=ff ff f8 [a1 ff ff f8]
#3 in+$0017 out+$0027 raw len=3 data=07 e0 1f [83 07 e0 1f]
#4 in+$001B out+$002A lz len=4 window=$021 [08 00]
```

再圧縮:

```text
#0 in+$0002 out+$0000 zero_rle len=18 [f0]
#1 in+$0003 out+$0012 raw len=15 data=81 00 ff 00 1f e0 07 f8 ... [8f 81 00 ff 00 1f e0 07 f8 00 ff 2a ff 55 ff 7e]
#2 in+$0013 out+$0021 lz len=3 window=$013 [07 f2]
#3 in+$0015 out+$0024 lz len=2 window=$022 [00 01]
#4 in+$0017 out+$0026 raw len=4 data=f8 07 e0 1f [84 f8 07 e0 1f]
```

## 事実と解釈

### 確認できた事実

- `exact` はヘッダを含む圧縮ストリーム全体のバイト一致です。
- `semantic_only` は元ストリームの展開結果と再圧縮ストリームの再展開結果が一致し、圧縮バイト列だけが不一致です。
- `first_difference.category` は最初に異なるコマンド種別から機械的に分類したもので、原因の証明ではありません。
- 元ROM全体では、末尾ちょうどまで届くLZが245資産、初期値0の未書込みwindowをsourceにするLZが169資産、2/3-pairコマンドが54資産、31-byte Raw直後の2-byte展開コマンドが7資産で直接確認できます。該当資産に完全一致例はありません。
- 現在の `original` はそれぞれ、末尾LZ拒否、入力内の過去位置だけのLZ検索、zero-pairs最小4、31-byte flush後も残る論理Raw状態という規則なので、上記コマンドを同じ位置では生成できません。

### 仮説として扱うべき点

- SPC700で完全一致した規則は、ゲーム内の全資産に共通する単一encoderではなく、特定のencoder版または設定profileを表している可能性が高いです。ただし、複数encoderの存在自体はROMだけからは証明できません。
- 末尾LZ、初期window、短いzero-pairs、Raw31境界の4点をprofile化すると、少なくとも410件の不一致に含まれる再現不能要因を解消できる見込みです。ただし複数要因が重なるため、410件すべての完全一致を保証する数ではありません。
- `lz_vs_rle_selection`: LZとRLEの候補比較順、tie-break、またはRLE候補の成立条件が候補です。これだけから優先順位を一意には決められません。
- `rle_length_segmentation` / `rle_type_selection`: RLE最大長、長いrunの分割位置、zero-pairs成立条件が候補です。
- `raw_copy_segmentation`: literal flushと短い圧縮候補の採否が候補ですが、後続のzero-pairs候補差が表面化したケースも含みます。
- 初期window差を別分類した後、最初の差が純粋なLZ対LZとなる例は0件でした。したがってnearest-first検索順が誤りという直接証拠は今回ありませんが、より早い別種の差が後続LZ差を隠すため、正しさの証明にもなりません。

完全な1件ごとのデータとコマンド差はJSON出力を参照してください。
