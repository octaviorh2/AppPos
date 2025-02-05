; ModuleID = 'marshal_methods.arm64-v8a.ll'
source_filename = "marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [354 x ptr] zeroinitializer, align 8

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [1062 x i64] [
	i64 u0x001e58127c546039, ; 0: lib_System.Globalization.dll.so => 42
	i64 u0x0024d0f62dee05bd, ; 1: Xamarin.KotlinX.Coroutines.Core.dll => 312
	i64 u0x0071cf2d27b7d61e, ; 2: lib_Xamarin.AndroidX.SwipeRefreshLayout.dll.so => 291
	i64 u0x01109b0e4d99e61f, ; 3: System.ComponentModel.Annotations.dll => 13
	i64 u0x02123411c4e01926, ; 4: lib_Xamarin.AndroidX.Navigation.Runtime.dll.so => 280
	i64 u0x02219a9941690f01, ; 5: APPOS.dll => 0
	i64 u0x0284512fad379f7e, ; 6: System.Runtime.Handles => 105
	i64 u0x02abedc11addc1ed, ; 7: lib_Mono.Android.Runtime.dll.so => 171
	i64 u0x02f55bf70672f5c8, ; 8: lib_System.IO.FileSystem.DriveInfo.dll.so => 48
	i64 u0x032267b2a94db371, ; 9: lib_Xamarin.AndroidX.AppCompat.dll.so => 234
	i64 u0x03621c804933a890, ; 10: System.Buffers => 7
	i64 u0x0363ac97a4cb84e6, ; 11: SQLitePCLRaw.provider.e_sqlite3.dll => 223
	i64 u0x0399610510a38a38, ; 12: lib_System.Private.DataContractSerialization.dll.so => 86
	i64 u0x043032f1d071fae0, ; 13: ru/Microsoft.Maui.Controls.resources => 340
	i64 u0x044440a55165631e, ; 14: lib-cs-Microsoft.Maui.Controls.resources.dll.so => 318
	i64 u0x046eb1581a80c6b0, ; 15: vi/Microsoft.Maui.Controls.resources => 346
	i64 u0x047408741db2431a, ; 16: Xamarin.AndroidX.DynamicAnimation => 254
	i64 u0x0514f1a3ae77a228, ; 17: lib_Xamarin.Kotlin.StdLib.Common.dll.so => 308
	i64 u0x0517ef04e06e9f76, ; 18: System.Net.Primitives => 71
	i64 u0x0565d18c6da3de38, ; 19: Xamarin.AndroidX.RecyclerView => 284
	i64 u0x0581db89237110e9, ; 20: lib_System.Collections.dll.so => 12
	i64 u0x05989cb940b225a9, ; 21: Microsoft.Maui.dll => 210
	i64 u0x05a1c25e78e22d87, ; 22: lib_System.Runtime.CompilerServices.Unsafe.dll.so => 102
	i64 u0x0600544dd3961080, ; 23: HarfBuzzSharp => 182
	i64 u0x06076b5d2b581f08, ; 24: zh-HK/Microsoft.Maui.Controls.resources => 347
	i64 u0x06388ffe9f6c161a, ; 25: System.Xml.Linq.dll => 156
	i64 u0x06600c4c124cb358, ; 26: System.Configuration.dll => 19
	i64 u0x067f95c5ddab55b3, ; 27: lib_Xamarin.AndroidX.Fragment.Ktx.dll.so => 259
	i64 u0x0680a433c781bb3d, ; 28: Xamarin.AndroidX.Collection.Jvm => 241
	i64 u0x069fff96ec92a91d, ; 29: System.Xml.XPath.dll => 161
	i64 u0x070b0847e18dab68, ; 30: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 256
	i64 u0x0739448d84d3b016, ; 31: lib_Xamarin.AndroidX.VectorDrawable.dll.so => 294
	i64 u0x07469f2eecce9e85, ; 32: mscorlib.dll => 167
	i64 u0x07c57877c7ba78ad, ; 33: ru/Microsoft.Maui.Controls.resources.dll => 340
	i64 u0x07dcdc7460a0c5e4, ; 34: System.Collections.NonGeneric => 10
	i64 u0x08122e52765333c8, ; 35: lib_Microsoft.Extensions.Logging.Debug.dll.so => 205
	i64 u0x088610fc2509f69e, ; 36: lib_Xamarin.AndroidX.VectorDrawable.Animated.dll.so => 295
	i64 u0x08a7c865576bbde7, ; 37: System.Reflection.Primitives => 96
	i64 u0x08c9d051a4a817e5, ; 38: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 251
	i64 u0x08f3c9788ee2153c, ; 39: Xamarin.AndroidX.DrawerLayout => 253
	i64 u0x090a04c5180cf016, ; 40: itext.styledxmlparser => 192
	i64 u0x09138715c92dba90, ; 41: lib_System.ComponentModel.Annotations.dll.so => 13
	i64 u0x0919c28b89381a0b, ; 42: lib_Microsoft.Extensions.Options.dll.so => 206
	i64 u0x092266563089ae3e, ; 43: lib_System.Collections.NonGeneric.dll.so => 10
	i64 u0x09d144a7e214d457, ; 44: System.Security.Cryptography => 127
	i64 u0x09e2b9f743db21a8, ; 45: lib_System.Reflection.Metadata.dll.so => 95
	i64 u0x0abb3e2b271edc45, ; 46: System.Threading.Channels.dll => 140
	i64 u0x0b06b1feab070143, ; 47: System.Formats.Tar => 39
	i64 u0x0b3b632c3bbee20c, ; 48: sk/Microsoft.Maui.Controls.resources => 341
	i64 u0x0b6aff547b84fbe9, ; 49: Xamarin.KotlinX.Serialization.Core.Jvm => 315
	i64 u0x0be2e1f8ce4064ed, ; 50: Xamarin.AndroidX.ViewPager => 297
	i64 u0x0c3ca6cc978e2aae, ; 51: pt-BR/Microsoft.Maui.Controls.resources => 337
	i64 u0x0c59ad9fbbd43abe, ; 52: Mono.Android => 172
	i64 u0x0c65741e86371ee3, ; 53: lib_Xamarin.Android.Glide.GifDecoder.dll.so => 228
	i64 u0x0c74af560004e816, ; 54: Microsoft.Win32.Registry.dll => 5
	i64 u0x0c7790f60165fc06, ; 55: lib_Microsoft.Maui.Essentials.dll.so => 211
	i64 u0x0c83c82812e96127, ; 56: lib_System.Net.Mail.dll.so => 67
	i64 u0x0cce4bce83380b7f, ; 57: Xamarin.AndroidX.Security.SecurityCrypto => 288
	i64 u0x0d13cd7cce4284e4, ; 58: System.Security.SecureString => 130
	i64 u0x0d63f4f73521c24f, ; 59: lib_Xamarin.AndroidX.SavedState.SavedState.Ktx.dll.so => 287
	i64 u0x0e04e702012f8463, ; 60: Xamarin.AndroidX.Emoji2 => 255
	i64 u0x0e14e73a54dda68e, ; 61: lib_System.Net.NameResolution.dll.so => 68
	i64 u0x0f37dd7a62ae99af, ; 62: lib_Xamarin.AndroidX.Collection.Ktx.dll.so => 242
	i64 u0x0f5e7abaa7cf470a, ; 63: System.Net.HttpListener => 66
	i64 u0x1001f97bbe242e64, ; 64: System.IO.UnmanagedMemoryStream => 57
	i64 u0x102a31b45304b1da, ; 65: Xamarin.AndroidX.CustomView => 250
	i64 u0x1065c4cb554c3d75, ; 66: System.IO.IsolatedStorage.dll => 52
	i64 u0x10f6cfcbcf801616, ; 67: System.IO.Compression.Brotli => 43
	i64 u0x114443cdcf2091f1, ; 68: System.Security.Cryptography.Primitives => 125
	i64 u0x11a603952763e1d4, ; 69: System.Net.Mail => 67
	i64 u0x11a70d0e1009fb11, ; 70: System.Net.WebSockets.dll => 81
	i64 u0x11f26371eee0d3c1, ; 71: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll.so => 270
	i64 u0x11fbe62d469cc1c8, ; 72: Microsoft.VisualStudio.DesignTools.TapContract.dll => 352
	i64 u0x12128b3f59302d47, ; 73: lib_System.Xml.Serialization.dll.so => 158
	i64 u0x123639456fb056da, ; 74: System.Reflection.Emit.Lightweight.dll => 92
	i64 u0x12521e9764603eaa, ; 75: lib_System.Resources.Reader.dll.so => 99
	i64 u0x125b7f94acb989db, ; 76: Xamarin.AndroidX.RecyclerView.dll => 284
	i64 u0x12d3b63863d4ab0b, ; 77: lib_System.Threading.Overlapped.dll.so => 141
	i64 u0x134eab1061c395ee, ; 78: System.Transactions => 151
	i64 u0x138567fa954faa55, ; 79: Xamarin.AndroidX.Browser => 238
	i64 u0x13a01de0cbc3f06c, ; 80: lib-fr-Microsoft.Maui.Controls.resources.dll.so => 324
	i64 u0x13beedefb0e28a45, ; 81: lib_System.Xml.XmlDocument.dll.so => 162
	i64 u0x13f1e5e209e91af4, ; 82: lib_Java.Interop.dll.so => 169
	i64 u0x13f1e880c25d96d1, ; 83: he/Microsoft.Maui.Controls.resources => 325
	i64 u0x13fd5cd93094a4e2, ; 84: BCrypt.Net-Next => 174
	i64 u0x143d8ea60a6a4011, ; 85: Microsoft.Extensions.DependencyInjection.Abstractions => 201
	i64 u0x1497051b917530bd, ; 86: lib_System.Net.WebSockets.dll.so => 81
	i64 u0x14b0660e629937d5, ; 87: itext.pdfua => 190
	i64 u0x14b78ce3adce0011, ; 88: Microsoft.VisualStudio.DesignTools.TapContract => 352
	i64 u0x14e68447938213b7, ; 89: Xamarin.AndroidX.Collection.Ktx.dll => 242
	i64 u0x152a448bd1e745a7, ; 90: Microsoft.Win32.Primitives => 4
	i64 u0x1557de0138c445f4, ; 91: lib_Microsoft.Win32.Registry.dll.so => 5
	i64 u0x15bdc156ed462f2f, ; 92: lib_System.IO.FileSystem.dll.so => 51
	i64 u0x15e300c2c1668655, ; 93: System.Resources.Writer.dll => 101
	i64 u0x16054fdcb6b3098b, ; 94: Microsoft.Extensions.DependencyModel.dll => 202
	i64 u0x16bf2a22df043a09, ; 95: System.IO.Pipes.dll => 56
	i64 u0x16cd84ceca3b17f3, ; 96: lib_BouncyCastle.Crypto.dll.so => 214
	i64 u0x16ea2b318ad2d830, ; 97: System.Security.Cryptography.Algorithms => 120
	i64 u0x16eeae54c7ebcc08, ; 98: System.Reflection.dll => 98
	i64 u0x17125c9a85b4929f, ; 99: lib_netstandard.dll.so => 168
	i64 u0x1716866f7416792e, ; 100: lib_System.Security.AccessControl.dll.so => 118
	i64 u0x174f71c46216e44a, ; 101: Xamarin.KotlinX.Coroutines.Core => 312
	i64 u0x1752c12f1e1fc00c, ; 102: System.Core => 21
	i64 u0x17b56e25558a5d36, ; 103: lib-hu-Microsoft.Maui.Controls.resources.dll.so => 328
	i64 u0x17f9358913beb16a, ; 104: System.Text.Encodings.Web => 137
	i64 u0x1809fb23f29ba44a, ; 105: lib_System.Reflection.TypeExtensions.dll.so => 97
	i64 u0x18402a709e357f3b, ; 106: lib_Xamarin.KotlinX.Serialization.Core.Jvm.dll.so => 315
	i64 u0x18a9befae51bb361, ; 107: System.Net.WebClient => 77
	i64 u0x18f0ce884e87d89a, ; 108: nb/Microsoft.Maui.Controls.resources.dll => 334
	i64 u0x193d7a04b7eda8bc, ; 109: lib_Xamarin.AndroidX.Print.dll.so => 282
	i64 u0x19777fba3c41b398, ; 110: Xamarin.AndroidX.Startup.StartupRuntime.dll => 290
	i64 u0x19a4c090f14ebb66, ; 111: System.Security.Claims => 119
	i64 u0x1a91866a319e9259, ; 112: lib_System.Collections.Concurrent.dll.so => 8
	i64 u0x1aac34d1917ba5d3, ; 113: lib_System.dll.so => 165
	i64 u0x1aad60783ffa3e5b, ; 114: lib-th-Microsoft.Maui.Controls.resources.dll.so => 343
	i64 u0x1aea8f1c3b282172, ; 115: lib_System.Net.Ping.dll.so => 70
	i64 u0x1b4b7a1d0d265fa2, ; 116: Xamarin.Android.Glide.DiskLruCache => 227
	i64 u0x1bbdb16cfa73e785, ; 117: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android => 271
	i64 u0x1bc766e07b2b4241, ; 118: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 285
	i64 u0x1c753b5ff15bce1b, ; 119: Mono.Android.Runtime.dll => 171
	i64 u0x1cd47467799d8250, ; 120: System.Threading.Tasks.dll => 145
	i64 u0x1d23eafdc6dc346c, ; 121: System.Globalization.Calendars.dll => 40
	i64 u0x1da4110562816681, ; 122: Xamarin.AndroidX.Security.SecurityCrypto.dll => 288
	i64 u0x1db6820994506bf5, ; 123: System.IO.FileSystem.AccessControl.dll => 47
	i64 u0x1dbb0c2c6a999acb, ; 124: System.Diagnostics.StackTrace => 30
	i64 u0x1e3d87657e9659bc, ; 125: Xamarin.AndroidX.Navigation.UI => 281
	i64 u0x1e71143913d56c10, ; 126: lib-ko-Microsoft.Maui.Controls.resources.dll.so => 332
	i64 u0x1e7c31185e2fb266, ; 127: lib_System.Threading.Tasks.Parallel.dll.so => 144
	i64 u0x1ed8fcce5e9b50a0, ; 128: Microsoft.Extensions.Options.dll => 206
	i64 u0x1f055d15d807e1b2, ; 129: System.Xml.XmlSerializer => 163
	i64 u0x1f1ed22c1085f044, ; 130: lib_System.Diagnostics.FileVersionInfo.dll.so => 28
	i64 u0x1f61df9c5b94d2c1, ; 131: lib_System.Numerics.dll.so => 84
	i64 u0x1f750bb5421397de, ; 132: lib_Xamarin.AndroidX.Tracing.Tracing.dll.so => 292
	i64 u0x20237ea48006d7a8, ; 133: lib_System.Net.WebClient.dll.so => 77
	i64 u0x209375905fcc1bad, ; 134: lib_System.IO.Compression.Brotli.dll.so => 43
	i64 u0x20fab3cf2dfbc8df, ; 135: lib_System.Diagnostics.Process.dll.so => 29
	i64 u0x2110167c128cba15, ; 136: System.Globalization => 42
	i64 u0x21419508838f7547, ; 137: System.Runtime.CompilerServices.VisualC => 103
	i64 u0x2174319c0d835bc9, ; 138: System.Runtime => 117
	i64 u0x2198e5bc8b7153fa, ; 139: Xamarin.AndroidX.Annotation.Experimental.dll => 232
	i64 u0x219ea1b751a4dee4, ; 140: lib_System.IO.Compression.ZipFile.dll.so => 45
	i64 u0x21cc7e445dcd5469, ; 141: System.Reflection.Emit.ILGeneration => 91
	i64 u0x220fd4f2e7c48170, ; 142: th/Microsoft.Maui.Controls.resources => 343
	i64 u0x2240bbfff446793b, ; 143: lib_SixLabors.ImageSharp.Drawing.dll.so => 217
	i64 u0x224538d85ed15a82, ; 144: System.IO.Pipes => 56
	i64 u0x22908438c6bed1af, ; 145: lib_System.Threading.Timer.dll.so => 148
	i64 u0x22fbc14e981e3b45, ; 146: lib_Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll.so => 351
	i64 u0x22fe1aafc4641617, ; 147: itext.bouncy-castle-connector => 184
	i64 u0x2311395e02efe6d6, ; 148: itextsharp.dll => 195
	i64 u0x237be844f1f812c7, ; 149: System.Threading.Thread.dll => 146
	i64 u0x23852b3bdc9f7096, ; 150: System.Resources.ResourceManager => 100
	i64 u0x23986dd7e5d4fc01, ; 151: System.IO.FileSystem.Primitives.dll => 49
	i64 u0x2407aef2bbe8fadf, ; 152: System.Console => 20
	i64 u0x240abe014b27e7d3, ; 153: Xamarin.AndroidX.Core.dll => 247
	i64 u0x247619fe4413f8bf, ; 154: System.Runtime.Serialization.Primitives.dll => 114
	i64 u0x24de8d301281575e, ; 155: Xamarin.Android.Glide => 225
	i64 u0x252073cc3caa62c2, ; 156: fr/Microsoft.Maui.Controls.resources.dll => 324
	i64 u0x25669e9c0c7a34c7, ; 157: Microsoft.Bcl.Numerics.dll => 196
	i64 u0x256b8d41255f01b1, ; 158: Xamarin.Google.Crypto.Tink.Android => 303
	i64 u0x25a0a7eff76ea08e, ; 159: SQLitePCLRaw.batteries_v2.dll => 220
	i64 u0x2662c629b96b0b30, ; 160: lib_Xamarin.Kotlin.StdLib.dll.so => 307
	i64 u0x268c1439f13bcc29, ; 161: lib_Microsoft.Extensions.Primitives.dll.so => 207
	i64 u0x26a670e154a9c54b, ; 162: System.Reflection.Extensions.dll => 94
	i64 u0x26d077d9678fe34f, ; 163: System.IO.dll => 58
	i64 u0x273f3515de5faf0d, ; 164: id/Microsoft.Maui.Controls.resources.dll => 329
	i64 u0x2742545f9094896d, ; 165: hr/Microsoft.Maui.Controls.resources => 327
	i64 u0x2759af78ab94d39b, ; 166: System.Net.WebSockets => 81
	i64 u0x27b2b16f3e9de038, ; 167: Xamarin.Google.Crypto.Tink.Android.dll => 303
	i64 u0x27b410442fad6cf1, ; 168: Java.Interop.dll => 169
	i64 u0x27b97e0d52c3034a, ; 169: System.Diagnostics.Debug => 26
	i64 u0x2801845a2c71fbfb, ; 170: System.Net.Primitives.dll => 71
	i64 u0x286835e259162700, ; 171: lib_Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll.so => 283
	i64 u0x28a25f9eea258e59, ; 172: SixLabors.ImageSharp.Drawing.dll => 217
	i64 u0x2927d345f3daec35, ; 173: SkiaSharp.dll => 218
	i64 u0x2949f3617a02c6b2, ; 174: Xamarin.AndroidX.ExifInterface => 257
	i64 u0x29f947844fb7fc11, ; 175: Microsoft.Maui.Controls.HotReload.Forms => 350
	i64 u0x2a128783efe70ba0, ; 176: uk/Microsoft.Maui.Controls.resources.dll => 345
	i64 u0x2a3b095612184159, ; 177: lib_System.Net.NetworkInformation.dll.so => 69
	i64 u0x2a6507a5ffabdf28, ; 178: System.Diagnostics.TraceSource.dll => 33
	i64 u0x2a8556742ffd34ef, ; 179: itext.sign => 191
	i64 u0x2ad156c8e1354139, ; 180: fi/Microsoft.Maui.Controls.resources => 323
	i64 u0x2ad5d6b13b7a3e04, ; 181: System.ComponentModel.DataAnnotations.dll => 14
	i64 u0x2af298f63581d886, ; 182: System.Text.RegularExpressions.dll => 139
	i64 u0x2afc1c4f898552ee, ; 183: lib_System.Formats.Asn1.dll.so => 38
	i64 u0x2b148910ed40fbf9, ; 184: zh-Hant/Microsoft.Maui.Controls.resources.dll => 349
	i64 u0x2b56eeab97412d7a, ; 185: itext.pdfa.dll => 189
	i64 u0x2b6989d78cba9a15, ; 186: Xamarin.AndroidX.Concurrent.Futures.dll => 243
	i64 u0x2bc2c8499f169046, ; 187: SixLabors.ImageSharp => 216
	i64 u0x2c8bd14bb93a7d82, ; 188: lib-pl-Microsoft.Maui.Controls.resources.dll.so => 336
	i64 u0x2cbd9262ca785540, ; 189: lib_System.Text.Encoding.CodePages.dll.so => 134
	i64 u0x2cc9e1fed6257257, ; 190: lib_System.Reflection.Emit.Lightweight.dll.so => 92
	i64 u0x2cd723e9fe623c7c, ; 191: lib_System.Private.Xml.Linq.dll.so => 88
	i64 u0x2d169d318a968379, ; 192: System.Threading.dll => 149
	i64 u0x2d47774b7d993f59, ; 193: sv/Microsoft.Maui.Controls.resources.dll => 342
	i64 u0x2d5ffcae1ad0aaca, ; 194: System.Data.dll => 24
	i64 u0x2db915caf23548d2, ; 195: System.Text.Json.dll => 138
	i64 u0x2dcaa0bb15a4117a, ; 196: System.IO.UnmanagedMemoryStream.dll => 57
	i64 u0x2e5a40c319acb800, ; 197: System.IO.FileSystem => 51
	i64 u0x2e6f1f226821322a, ; 198: el/Microsoft.Maui.Controls.resources.dll => 321
	i64 u0x2f02f94df3200fe5, ; 199: System.Diagnostics.Process => 29
	i64 u0x2f2e98e1c89b1aff, ; 200: System.Xml.ReaderWriter => 157
	i64 u0x2f5911d9ba814e4e, ; 201: System.Diagnostics.Tracing => 34
	i64 u0x2f84070a459bc31f, ; 202: lib_System.Xml.dll.so => 164
	i64 u0x309ee9eeec09a71e, ; 203: lib_Xamarin.AndroidX.Fragment.dll.so => 258
	i64 u0x30c6dda129408828, ; 204: System.IO.IsolatedStorage => 52
	i64 u0x31020eaa57d678fe, ; 205: Microsoft.Bcl.Numerics => 196
	i64 u0x31195fef5d8fb552, ; 206: _Microsoft.Android.Resource.Designer.dll => 353
	i64 u0x312c8ed623cbfc8d, ; 207: Xamarin.AndroidX.Window.dll => 299
	i64 u0x31496b779ed0663d, ; 208: lib_System.Reflection.DispatchProxy.dll.so => 90
	i64 u0x32243413e774362a, ; 209: Xamarin.AndroidX.CardView.dll => 239
	i64 u0x3235427f8d12dae1, ; 210: lib_System.Drawing.Primitives.dll.so => 35
	i64 u0x32524ae1e229f098, ; 211: itext.svg.dll => 193
	i64 u0x329753a17a517811, ; 212: fr/Microsoft.Maui.Controls.resources => 324
	i64 u0x32aa989ff07a84ff, ; 213: lib_System.Xml.ReaderWriter.dll.so => 157
	i64 u0x33829542f112d59b, ; 214: System.Collections.Immutable => 9
	i64 u0x33a31443733849fe, ; 215: lib-es-Microsoft.Maui.Controls.resources.dll.so => 322
	i64 u0x341abc357fbb4ebf, ; 216: lib_System.Net.Sockets.dll.so => 76
	i64 u0x3496c1e2dcaf5ecc, ; 217: lib_System.IO.Pipes.AccessControl.dll.so => 55
	i64 u0x34dfd74fe2afcf37, ; 218: Microsoft.Maui => 210
	i64 u0x34e292762d9615df, ; 219: cs/Microsoft.Maui.Controls.resources.dll => 318
	i64 u0x3503ffbf188b816a, ; 220: lib_Xceed.Words.NET.dll.so => 179
	i64 u0x3508234247f48404, ; 221: Microsoft.Maui.Controls => 208
	i64 u0x353590da528c9d22, ; 222: System.ComponentModel.Annotations => 13
	i64 u0x3549870798b4cd30, ; 223: lib_Xamarin.AndroidX.ViewPager2.dll.so => 298
	i64 u0x355282fc1c909694, ; 224: Microsoft.Extensions.Configuration => 198
	i64 u0x3552fc5d578f0fbf, ; 225: Xamarin.AndroidX.Arch.Core.Common => 236
	i64 u0x355c649948d55d97, ; 226: lib_System.Runtime.Intrinsics.dll.so => 109
	i64 u0x35ea9d1c6834bc8c, ; 227: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 274
	i64 u0x3628ab68db23a01a, ; 228: lib_System.Diagnostics.Tools.dll.so => 32
	i64 u0x3673b042508f5b6b, ; 229: lib_System.Runtime.Extensions.dll.so => 104
	i64 u0x36740f1a8ecdc6c4, ; 230: System.Numerics => 84
	i64 u0x36b2b50fdf589ae2, ; 231: System.Reflection.Emit.Lightweight => 92
	i64 u0x36cada77dc79928b, ; 232: System.IO.MemoryMappedFiles => 53
	i64 u0x374ef46b06791af6, ; 233: System.Reflection.Primitives.dll => 96
	i64 u0x376bf93e521a5417, ; 234: lib_Xamarin.Jetbrains.Annotations.dll.so => 306
	i64 u0x37bc29f3183003b6, ; 235: lib_System.IO.dll.so => 58
	i64 u0x380134e03b1e160a, ; 236: System.Collections.Immutable.dll => 9
	i64 u0x38049b5c59b39324, ; 237: System.Runtime.CompilerServices.Unsafe => 102
	i64 u0x385c17636bb6fe6e, ; 238: Xamarin.AndroidX.CustomView.dll => 250
	i64 u0x38869c811d74050e, ; 239: System.Net.NameResolution.dll => 68
	i64 u0x38a6b0d72504bf06, ; 240: itextsharp => 195
	i64 u0x393c226616977fdb, ; 241: lib_Xamarin.AndroidX.ViewPager.dll.so => 297
	i64 u0x395e37c3334cf82a, ; 242: lib-ca-Microsoft.Maui.Controls.resources.dll.so => 317
	i64 u0x39aa39fda111d9d3, ; 243: Newtonsoft.Json => 213
	i64 u0x3a76a7a156f3d989, ; 244: System.IO.Packaging => 224
	i64 u0x3a9ae914a83b6050, ; 245: itext.barcodes.dll => 183
	i64 u0x3ab5859054645f72, ; 246: System.Security.Cryptography.Primitives.dll => 125
	i64 u0x3ad75090c3fac0e9, ; 247: lib_Xamarin.AndroidX.ResourceInspection.Annotation.dll.so => 285
	i64 u0x3ae44ac43a1fbdbb, ; 248: System.Runtime.Serialization => 116
	i64 u0x3b860f9932505633, ; 249: lib_System.Text.Encoding.Extensions.dll.so => 135
	i64 u0x3c3aafb6b3a00bf6, ; 250: lib_System.Security.Cryptography.X509Certificates.dll.so => 126
	i64 u0x3c4049146b59aa90, ; 251: System.Runtime.InteropServices.JavaScript => 106
	i64 u0x3c7c495f58ac5ee9, ; 252: Xamarin.Kotlin.StdLib => 307
	i64 u0x3c7e5ed3d5db71bb, ; 253: System.Security => 131
	i64 u0x3cd9d281d402eb9b, ; 254: Xamarin.AndroidX.Browser.dll => 238
	i64 u0x3d1c50cc001a991e, ; 255: Xamarin.Google.Guava.ListenableFuture.dll => 305
	i64 u0x3d2b1913edfc08d7, ; 256: lib_System.Threading.ThreadPool.dll.so => 147
	i64 u0x3d46f0b995082740, ; 257: System.Xml.Linq => 156
	i64 u0x3d551d0efdd24596, ; 258: System.IO.Packaging.dll => 224
	i64 u0x3d8a8f400514a790, ; 259: Xamarin.AndroidX.Fragment.Ktx.dll => 259
	i64 u0x3d9c2a242b040a50, ; 260: lib_Xamarin.AndroidX.Core.dll.so => 247
	i64 u0x3da7781d6333a8fe, ; 261: SQLitePCLRaw.batteries_v2 => 220
	i64 u0x3dbb6b9f5ab90fa7, ; 262: lib_Xamarin.AndroidX.DynamicAnimation.dll.so => 254
	i64 u0x3e5441657549b213, ; 263: Xamarin.AndroidX.ResourceInspection.Annotation => 285
	i64 u0x3e57d4d195c53c2e, ; 264: System.Reflection.TypeExtensions => 97
	i64 u0x3e616ab4ed1f3f15, ; 265: lib_System.Data.dll.so => 24
	i64 u0x3f1d226e6e06db7e, ; 266: Xamarin.AndroidX.SlidingPaneLayout.dll => 289
	i64 u0x3f510adf788828dd, ; 267: System.Threading.Tasks.Extensions => 143
	i64 u0x407740ff2e914d86, ; 268: Xamarin.AndroidX.Print.dll => 282
	i64 u0x407a10bb4bf95829, ; 269: lib_Xamarin.AndroidX.Navigation.Common.dll.so => 278
	i64 u0x40c98b6bd77346d4, ; 270: Microsoft.VisualBasic.dll => 3
	i64 u0x4171ec289522e573, ; 271: Xceed.Document.NET.dll => 177
	i64 u0x41833cf766d27d96, ; 272: mscorlib => 167
	i64 u0x41cab042be111c34, ; 273: lib_Xamarin.AndroidX.AppCompat.AppCompatResources.dll.so => 235
	i64 u0x4202b91ac01ad789, ; 274: itext.barcodes => 183
	i64 u0x423a9ecc4d905a88, ; 275: lib_System.Resources.ResourceManager.dll.so => 100
	i64 u0x423bf51ae7def810, ; 276: System.Xml.XPath => 161
	i64 u0x42462ff15ddba223, ; 277: System.Resources.Reader.dll => 99
	i64 u0x42a31b86e6ccc3f0, ; 278: System.Diagnostics.Contracts => 25
	i64 u0x430e95b891249788, ; 279: lib_System.Reflection.Emit.dll.so => 93
	i64 u0x43375950ec7c1b6a, ; 280: netstandard.dll => 168
	i64 u0x434c4e1d9284cdae, ; 281: Mono.Android.dll => 172
	i64 u0x43505013578652a0, ; 282: lib_Xamarin.AndroidX.Activity.Ktx.dll.so => 230
	i64 u0x437d06c381ed575a, ; 283: lib_Microsoft.VisualBasic.dll.so => 3
	i64 u0x43950f84de7cc79a, ; 284: pl/Microsoft.Maui.Controls.resources.dll => 336
	i64 u0x43e8ca5bc927ff37, ; 285: lib_Xamarin.AndroidX.Emoji2.ViewsHelper.dll.so => 256
	i64 u0x44072a9b8ec3337d, ; 286: SixLabors.ImageSharp.Drawing => 217
	i64 u0x448bd33429269b19, ; 287: Microsoft.CSharp => 1
	i64 u0x4499fa3c8e494654, ; 288: lib_System.Runtime.Serialization.Primitives.dll.so => 114
	i64 u0x4515080865a951a5, ; 289: Xamarin.Kotlin.StdLib.dll => 307
	i64 u0x4545802489b736b9, ; 290: Xamarin.AndroidX.Fragment.Ktx => 259
	i64 u0x454b4d1e66bb783c, ; 291: Xamarin.AndroidX.Lifecycle.Process => 267
	i64 u0x45c40276a42e283e, ; 292: System.Diagnostics.TraceSource => 33
	i64 u0x45d443f2a29adc37, ; 293: System.AppContext.dll => 6
	i64 u0x45fcc9fd66f25095, ; 294: Microsoft.Extensions.DependencyModel => 202
	i64 u0x46a4213bc97fe5ae, ; 295: lib-ru-Microsoft.Maui.Controls.resources.dll.so => 340
	i64 u0x472c10e45b4b6f81, ; 296: SixLabors.ImageSharp.dll => 216
	i64 u0x47358bd471172e1d, ; 297: lib_System.Xml.Linq.dll.so => 156
	i64 u0x47daf4e1afbada10, ; 298: pt/Microsoft.Maui.Controls.resources => 338
	i64 u0x480c0a47dd42dd81, ; 299: lib_System.IO.MemoryMappedFiles.dll.so => 53
	i64 u0x488d293220a4fe37, ; 300: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 261
	i64 u0x49e952f19a4e2022, ; 301: System.ObjectModel => 85
	i64 u0x49f9e6948a8131e4, ; 302: lib_Xamarin.AndroidX.VersionedParcelable.dll.so => 296
	i64 u0x4a5667b2462a664b, ; 303: lib_Xamarin.AndroidX.Navigation.UI.dll.so => 281
	i64 u0x4a7a18981dbd56bc, ; 304: System.IO.Compression.FileSystem.dll => 44
	i64 u0x4aa5c60350917c06, ; 305: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll.so => 266
	i64 u0x4b07a0ed0ab33ff4, ; 306: System.Runtime.Extensions.dll => 104
	i64 u0x4b576d47ac054f3c, ; 307: System.IO.FileSystem.AccessControl => 47
	i64 u0x4b7b6532ded934b7, ; 308: System.Text.Json => 138
	i64 u0x4c1b006642b5042b, ; 309: lib_Xceed.Drawing.NET.dll.so => 178
	i64 u0x4c7755cf07ad2d5f, ; 310: System.Net.Http.Json.dll => 64
	i64 u0x4cc5f15266470798, ; 311: lib_Xamarin.AndroidX.Loader.dll.so => 276
	i64 u0x4cf6f67dc77aacd2, ; 312: System.Net.NetworkInformation.dll => 69
	i64 u0x4d3183dd245425d4, ; 313: System.Net.WebSockets.Client.dll => 80
	i64 u0x4d479f968a05e504, ; 314: System.Linq.Expressions.dll => 59
	i64 u0x4d55a010ffc4faff, ; 315: System.Private.Xml => 89
	i64 u0x4d5cbe77561c5b2e, ; 316: System.Web.dll => 154
	i64 u0x4d77512dbd86ee4c, ; 317: lib_Xamarin.AndroidX.Arch.Core.Common.dll.so => 236
	i64 u0x4d7793536e79c309, ; 318: System.ServiceProcess => 133
	i64 u0x4d95fccc1f67c7ca, ; 319: System.Runtime.Loader.dll => 110
	i64 u0x4dcf44c3c9b076a2, ; 320: it/Microsoft.Maui.Controls.resources.dll => 330
	i64 u0x4dd9247f1d2c3235, ; 321: Xamarin.AndroidX.Loader.dll => 276
	i64 u0x4e2aeee78e2c4a87, ; 322: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 283
	i64 u0x4e32f00cb0937401, ; 323: Mono.Android.Runtime => 171
	i64 u0x4e5eea4668ac2b18, ; 324: System.Text.Encoding.CodePages => 134
	i64 u0x4e982534d67b56ba, ; 325: lib_itext.io.dll.so => 186
	i64 u0x4ebd0c4b82c5eefc, ; 326: lib_System.Threading.Channels.dll.so => 140
	i64 u0x4ee8eaa9c9c1151a, ; 327: System.Globalization.Calendars => 40
	i64 u0x4f21ee6ef9eb527e, ; 328: ca/Microsoft.Maui.Controls.resources => 317
	i64 u0x4fbc57e20df1874a, ; 329: itext.io.dll => 186
	i64 u0x4fd5f3ee53d0a4f0, ; 330: SQLitePCLRaw.lib.e_sqlite3.android => 222
	i64 u0x5037f0be3c28c7a3, ; 331: lib_Microsoft.Maui.Controls.dll.so => 208
	i64 u0x50c3a29b21050d45, ; 332: System.Linq.Parallel.dll => 60
	i64 u0x5112ed116d87baf8, ; 333: CommunityToolkit.Mvvm => 176
	i64 u0x512c33621dd468cb, ; 334: lib_itext.kernel.dll.so => 187
	i64 u0x5131bbe80989093f, ; 335: Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll => 273
	i64 u0x516324a5050a7e3c, ; 336: System.Net.WebProxy => 79
	i64 u0x516d6f0b21a303de, ; 337: lib_System.Diagnostics.Contracts.dll.so => 25
	i64 u0x51bb8a2afe774e32, ; 338: System.Drawing => 36
	i64 u0x5247c5c32a4140f0, ; 339: System.Resources.Reader => 99
	i64 u0x526bb15e3c386364, ; 340: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 270
	i64 u0x526ce79eb8e90527, ; 341: lib_System.Net.Primitives.dll.so => 71
	i64 u0x52829f00b4467c38, ; 342: lib_System.Data.Common.dll.so => 22
	i64 u0x529e5a460e733af4, ; 343: lib_itext.sign.dll.so => 191
	i64 u0x529ffe06f39ab8db, ; 344: Xamarin.AndroidX.Core => 247
	i64 u0x52ff996554dbf352, ; 345: Microsoft.Maui.Graphics => 212
	i64 u0x535f7e40e8fef8af, ; 346: lib-sk-Microsoft.Maui.Controls.resources.dll.so => 341
	i64 u0x53978aac584c666e, ; 347: lib_System.Security.Cryptography.Cng.dll.so => 121
	i64 u0x53a96d5c86c9e194, ; 348: System.Net.NetworkInformation => 69
	i64 u0x53be1038a61e8d44, ; 349: System.Runtime.InteropServices.RuntimeInformation.dll => 107
	i64 u0x53c3014b9437e684, ; 350: lib-zh-HK-Microsoft.Maui.Controls.resources.dll.so => 347
	i64 u0x53d666fa678b6cea, ; 351: Microsoft.DotNet.PlatformAbstractions => 197
	i64 u0x53e450ebd586f842, ; 352: lib_Xamarin.AndroidX.LocalBroadcastManager.dll.so => 277
	i64 u0x5435e6f049e9bc37, ; 353: System.Security.Claims.dll => 119
	i64 u0x54795225dd1587af, ; 354: lib_System.Runtime.dll.so => 117
	i64 u0x547a34f14e5f6210, ; 355: Xamarin.AndroidX.Lifecycle.Common.dll => 262
	i64 u0x556e8b63b660ab8b, ; 356: Xamarin.AndroidX.Lifecycle.Common.Jvm.dll => 263
	i64 u0x5588627c9a108ec9, ; 357: System.Collections.Specialized => 11
	i64 u0x55a898e4f42e3fae, ; 358: Microsoft.VisualBasic.Core.dll => 2
	i64 u0x55fa0c610fe93bb1, ; 359: lib_System.Security.Cryptography.OpenSsl.dll.so => 124
	i64 u0x56442b99bc64bb47, ; 360: System.Runtime.Serialization.Xml.dll => 115
	i64 u0x56a8b26e1aeae27b, ; 361: System.Threading.Tasks.Dataflow => 142
	i64 u0x56f932d61e93c07f, ; 362: System.Globalization.Extensions => 41
	i64 u0x571c5cfbec5ae8e2, ; 363: System.Private.Uri => 87
	i64 u0x576499c9f52fea31, ; 364: Xamarin.AndroidX.Annotation => 231
	i64 u0x578cd35c91d7b347, ; 365: lib_SQLitePCLRaw.core.dll.so => 221
	i64 u0x579a06fed6eec900, ; 366: System.Private.CoreLib.dll => 173
	i64 u0x57c542c14049b66d, ; 367: System.Diagnostics.DiagnosticSource => 27
	i64 u0x581a8bd5cfda563e, ; 368: System.Threading.Timer => 148
	i64 u0x58601b2dda4a27b9, ; 369: lib-ja-Microsoft.Maui.Controls.resources.dll.so => 331
	i64 u0x58688d9af496b168, ; 370: Microsoft.Extensions.DependencyInjection.dll => 200
	i64 u0x5871a03f901fe7be, ; 371: Xceed.Drawing.NET => 178
	i64 u0x588c167a79db6bfb, ; 372: lib_Xamarin.Google.ErrorProne.Annotations.dll.so => 304
	i64 u0x5906028ae5151104, ; 373: Xamarin.AndroidX.Activity.Ktx => 230
	i64 u0x595a356d23e8da9a, ; 374: lib_Microsoft.CSharp.dll.so => 1
	i64 u0x59f9e60b9475085f, ; 375: lib_Xamarin.AndroidX.Annotation.Experimental.dll.so => 232
	i64 u0x5a745f5101a75527, ; 376: lib_System.IO.Compression.FileSystem.dll.so => 44
	i64 u0x5a89a886ae30258d, ; 377: lib_Xamarin.AndroidX.CoordinatorLayout.dll.so => 246
	i64 u0x5a8f6699f4a1caa9, ; 378: lib_System.Threading.dll.so => 149
	i64 u0x5ae8e4f3eae4d547, ; 379: Xamarin.AndroidX.Legacy.Support.Core.Utils => 261
	i64 u0x5ae9cd33b15841bf, ; 380: System.ComponentModel => 18
	i64 u0x5b54391bdc6fcfe6, ; 381: System.Private.DataContractSerialization => 86
	i64 u0x5b5f0e240a06a2a2, ; 382: da/Microsoft.Maui.Controls.resources.dll => 319
	i64 u0x5b8109e8e14c5e3e, ; 383: System.Globalization.Extensions.dll => 41
	i64 u0x5bddd04d72a9e350, ; 384: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 266
	i64 u0x5bdf16b09da116ab, ; 385: Xamarin.AndroidX.Collection => 240
	i64 u0x5c019d5266093159, ; 386: lib_Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll.so => 271
	i64 u0x5c30a4a35f9cc8c4, ; 387: lib_System.Reflection.Extensions.dll.so => 94
	i64 u0x5c393624b8176517, ; 388: lib_Microsoft.Extensions.Logging.dll.so => 203
	i64 u0x5c53c29f5073b0c9, ; 389: System.Diagnostics.FileVersionInfo => 28
	i64 u0x5c87463c575c7616, ; 390: lib_System.Globalization.Extensions.dll.so => 41
	i64 u0x5d0a4a29b02d9d3c, ; 391: System.Net.WebHeaderCollection.dll => 78
	i64 u0x5d40c9b15181641f, ; 392: lib_Xamarin.AndroidX.Emoji2.dll.so => 255
	i64 u0x5d6ca10d35e9485b, ; 393: lib_Xamarin.AndroidX.Concurrent.Futures.dll.so => 243
	i64 u0x5d7ec76c1c703055, ; 394: System.Threading.Tasks.Parallel => 144
	i64 u0x5db0cbbd1028510e, ; 395: lib_System.Runtime.InteropServices.dll.so => 108
	i64 u0x5db30905d3e5013b, ; 396: Xamarin.AndroidX.Collection.Jvm.dll => 241
	i64 u0x5dd6b7a248119517, ; 397: lib_Microsoft.Bcl.Numerics.dll.so => 196
	i64 u0x5e467bc8f09ad026, ; 398: System.Collections.Specialized.dll => 11
	i64 u0x5e5173b3208d97e7, ; 399: System.Runtime.Handles.dll => 105
	i64 u0x5ea92fdb19ec8c4c, ; 400: System.Text.Encodings.Web.dll => 137
	i64 u0x5eb8046dd40e9ac3, ; 401: System.ComponentModel.Primitives => 16
	i64 u0x5ec272d219c9aba4, ; 402: System.Security.Cryptography.Csp.dll => 122
	i64 u0x5eee1376d94c7f5e, ; 403: System.Net.HttpListener.dll => 66
	i64 u0x5f36ccf5c6a57e24, ; 404: System.Xml.ReaderWriter.dll => 157
	i64 u0x5f4294b9b63cb842, ; 405: System.Data.Common => 22
	i64 u0x5f7399e166075632, ; 406: lib_SQLitePCLRaw.lib.e_sqlite3.android.dll.so => 222
	i64 u0x5f9a2d823f664957, ; 407: lib-el-Microsoft.Maui.Controls.resources.dll.so => 321
	i64 u0x5fa6da9c3cd8142a, ; 408: lib_Xamarin.KotlinX.Serialization.Core.dll.so => 314
	i64 u0x5fac98e0b37a5b9d, ; 409: System.Runtime.CompilerServices.Unsafe.dll => 102
	i64 u0x609f4b7b63d802d4, ; 410: lib_Microsoft.Extensions.DependencyInjection.dll.so => 200
	i64 u0x60cd4e33d7e60134, ; 411: Xamarin.KotlinX.Coroutines.Core.Jvm => 313
	i64 u0x60f62d786afcf130, ; 412: System.Memory => 63
	i64 u0x61a3b9f0f15a3269, ; 413: lib_SixLabors.Fonts.dll.so => 215
	i64 u0x61bb78c89f867353, ; 414: System.IO => 58
	i64 u0x61be8d1299194243, ; 415: Microsoft.Maui.Controls.Xaml => 209
	i64 u0x61d2cba29557038f, ; 416: de/Microsoft.Maui.Controls.resources => 320
	i64 u0x61d88f399afb2f45, ; 417: lib_System.Runtime.Loader.dll.so => 110
	i64 u0x622eef6f9e59068d, ; 418: System.Private.CoreLib => 173
	i64 u0x637320c71840c561, ; 419: lib_itext.pdfa.dll.so => 189
	i64 u0x63d5e3aa4ef9b931, ; 420: Xamarin.KotlinX.Coroutines.Android.dll => 311
	i64 u0x63f1f6883c1e23c2, ; 421: lib_System.Collections.Immutable.dll.so => 9
	i64 u0x6400f68068c1e9f1, ; 422: Xamarin.Google.Android.Material.dll => 301
	i64 u0x640e3b14dbd325c2, ; 423: System.Security.Cryptography.Algorithms.dll => 120
	i64 u0x64587004560099b9, ; 424: System.Reflection => 98
	i64 u0x64b1529a438a3c45, ; 425: lib_System.Runtime.Handles.dll.so => 105
	i64 u0x6565fba2cd8f235b, ; 426: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 274
	i64 u0x65ecac39144dd3cc, ; 427: Microsoft.Maui.Controls.dll => 208
	i64 u0x65ece51227bfa724, ; 428: lib_System.Runtime.Numerics.dll.so => 111
	i64 u0x661722438787b57f, ; 429: Xamarin.AndroidX.Annotation.Jvm.dll => 233
	i64 u0x6679b2337ee6b22a, ; 430: lib_System.IO.FileSystem.Primitives.dll.so => 49
	i64 u0x6692e924eade1b29, ; 431: lib_System.Console.dll.so => 20
	i64 u0x66a4e5c6a3fb0bae, ; 432: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Android.dll.so => 273
	i64 u0x66d13304ce1a3efa, ; 433: Xamarin.AndroidX.CursorAdapter => 249
	i64 u0x674303f65d8fad6f, ; 434: lib_System.Net.Quic.dll.so => 72
	i64 u0x6756ca4cad62e9d6, ; 435: lib_Xamarin.AndroidX.ConstraintLayout.Core.dll.so => 245
	i64 u0x67c0802770244408, ; 436: System.Windows.dll => 155
	i64 u0x68100b69286e27cd, ; 437: lib_System.Formats.Tar.dll.so => 39
	i64 u0x68558ec653afa616, ; 438: lib-da-Microsoft.Maui.Controls.resources.dll.so => 319
	i64 u0x6872ec7a2e36b1ac, ; 439: System.Drawing.Primitives.dll => 35
	i64 u0x68bb2c417aa9b61c, ; 440: Xamarin.KotlinX.AtomicFU.dll => 309
	i64 u0x68fbbbe2eb455198, ; 441: System.Formats.Asn1 => 38
	i64 u0x69063fc0ba8e6bdd, ; 442: he/Microsoft.Maui.Controls.resources.dll => 325
	i64 u0x699dffb2427a2d71, ; 443: SQLitePCLRaw.lib.e_sqlite3.android.dll => 222
	i64 u0x69a3e26c76f6eec4, ; 444: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 300
	i64 u0x6a4d7577b2317255, ; 445: System.Runtime.InteropServices.dll => 108
	i64 u0x6ace3b74b15ee4a4, ; 446: nb/Microsoft.Maui.Controls.resources => 334
	i64 u0x6afcedb171067e2b, ; 447: System.Core.dll => 21
	i64 u0x6bef98e124147c24, ; 448: Xamarin.Jetbrains.Annotations => 306
	i64 u0x6ce874bff138ce2b, ; 449: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 272
	i64 u0x6d12bfaa99c72b1f, ; 450: lib_Microsoft.Maui.Graphics.dll.so => 212
	i64 u0x6d70755158ca866e, ; 451: lib_System.ComponentModel.EventBasedAsync.dll.so => 15
	i64 u0x6d79993361e10ef2, ; 452: Microsoft.Extensions.Primitives => 207
	i64 u0x6d7eeca99577fc8b, ; 453: lib_System.Net.WebProxy.dll.so => 79
	i64 u0x6d8515b19946b6a2, ; 454: System.Net.WebProxy.dll => 79
	i64 u0x6d86d56b84c8eb71, ; 455: lib_Xamarin.AndroidX.CursorAdapter.dll.so => 249
	i64 u0x6d9bea6b3e895cf7, ; 456: Microsoft.Extensions.Primitives.dll => 207
	i64 u0x6dd9bf4083de3f6a, ; 457: Xamarin.AndroidX.DocumentFile.dll => 252
	i64 u0x6e25a02c3833319a, ; 458: lib_Xamarin.AndroidX.Navigation.Fragment.dll.so => 279
	i64 u0x6e79c6bd8627412a, ; 459: Xamarin.AndroidX.SavedState.SavedState.Ktx => 287
	i64 u0x6e838d9a2a6f6c9e, ; 460: lib_System.ValueTuple.dll.so => 152
	i64 u0x6e9965ce1095e60a, ; 461: lib_System.Core.dll.so => 21
	i64 u0x6fd2265da78b93a4, ; 462: lib_Microsoft.Maui.dll.so => 210
	i64 u0x6fdfc7de82c33008, ; 463: cs/Microsoft.Maui.Controls.resources => 318
	i64 u0x6ffc4967cc47ba57, ; 464: System.IO.FileSystem.Watcher.dll => 50
	i64 u0x701cd46a1c25a5fe, ; 465: System.IO.FileSystem.dll => 51
	i64 u0x70c1154d9ce7bd51, ; 466: Xamarin.Kotlin.StdLib.Common.dll => 308
	i64 u0x70e99f48c05cb921, ; 467: tr/Microsoft.Maui.Controls.resources.dll => 344
	i64 u0x70fd3deda22442d2, ; 468: lib-nb-Microsoft.Maui.Controls.resources.dll.so => 334
	i64 u0x71485e7ffdb4b958, ; 469: System.Reflection.Extensions => 94
	i64 u0x7162a2fce67a945f, ; 470: lib_Xamarin.Android.Glide.Annotations.dll.so => 226
	i64 u0x71a495ea3761dde8, ; 471: lib-it-Microsoft.Maui.Controls.resources.dll.so => 330
	i64 u0x71ad672adbe48f35, ; 472: System.ComponentModel.Primitives.dll => 16
	i64 u0x725f5a9e82a45c81, ; 473: System.Security.Cryptography.Encoding => 123
	i64 u0x72b1fb4109e08d7b, ; 474: lib-hr-Microsoft.Maui.Controls.resources.dll.so => 327
	i64 u0x72e0300099accce1, ; 475: System.Xml.XPath.XDocument => 160
	i64 u0x730bfb248998f67a, ; 476: System.IO.Compression.ZipFile => 45
	i64 u0x732b2d67b9e5c47b, ; 477: Xamarin.Google.ErrorProne.Annotations.dll => 304
	i64 u0x734b76fdc0dc05bb, ; 478: lib_GoogleGson.dll.so => 181
	i64 u0x73a6be34e822f9d1, ; 479: lib_System.Runtime.Serialization.dll.so => 116
	i64 u0x73e4ce94e2eb6ffc, ; 480: lib_System.Memory.dll.so => 63
	i64 u0x743a1eccf080489a, ; 481: WindowsBase.dll => 166
	i64 u0x755a91767330b3d4, ; 482: lib_Microsoft.Extensions.Configuration.dll.so => 198
	i64 u0x75c326eb821b85c4, ; 483: lib_System.ComponentModel.DataAnnotations.dll.so => 14
	i64 u0x75f59536ad2b55b1, ; 484: SixLabors.Fonts => 215
	i64 u0x76012e7334db86e5, ; 485: lib_Xamarin.AndroidX.SavedState.dll.so => 286
	i64 u0x76ca07b878f44da0, ; 486: System.Runtime.Numerics.dll => 111
	i64 u0x7736c8a96e51a061, ; 487: lib_Xamarin.AndroidX.Annotation.Jvm.dll.so => 233
	i64 u0x778a805e625329ef, ; 488: System.Linq.Parallel => 60
	i64 u0x779290cc2b801eb7, ; 489: Xamarin.KotlinX.AtomicFU.Jvm => 310
	i64 u0x77f8a4acc2fdc449, ; 490: System.Security.Cryptography.Cng.dll => 121
	i64 u0x780bc73597a503a9, ; 491: lib-ms-Microsoft.Maui.Controls.resources.dll.so => 333
	i64 u0x782c5d8eb99ff201, ; 492: lib_Microsoft.VisualBasic.Core.dll.so => 2
	i64 u0x783606d1e53e7a1a, ; 493: th/Microsoft.Maui.Controls.resources.dll => 343
	i64 u0x78a45e51311409b6, ; 494: Xamarin.AndroidX.Fragment.dll => 258
	i64 u0x78ed4ab8f9d800a1, ; 495: Xamarin.AndroidX.Lifecycle.ViewModel => 272
	i64 u0x7a39601d6f0bb831, ; 496: lib_Xamarin.KotlinX.AtomicFU.dll.so => 309
	i64 u0x7a7e7eddf79c5d26, ; 497: lib_Xamarin.AndroidX.Lifecycle.ViewModel.dll.so => 272
	i64 u0x7a9a57d43b0845fa, ; 498: System.AppContext => 6
	i64 u0x7ad0f4f1e5d08183, ; 499: Xamarin.AndroidX.Collection.dll => 240
	i64 u0x7adb8da2ac89b647, ; 500: fi/Microsoft.Maui.Controls.resources.dll => 323
	i64 u0x7b13d9eaa944ade8, ; 501: Xamarin.AndroidX.DynamicAnimation.dll => 254
	i64 u0x7be2f074f5bc6bd3, ; 502: Xceed.Words.NET => 179
	i64 u0x7bef86a4335c4870, ; 503: System.ComponentModel.TypeConverter => 17
	i64 u0x7c0820144cd34d6a, ; 504: sk/Microsoft.Maui.Controls.resources.dll => 341
	i64 u0x7c2a0bd1e0f988fc, ; 505: lib-de-Microsoft.Maui.Controls.resources.dll.so => 320
	i64 u0x7c41d387501568ba, ; 506: System.Net.WebClient.dll => 77
	i64 u0x7c482cd79bd24b13, ; 507: lib_Xamarin.AndroidX.ConstraintLayout.dll.so => 244
	i64 u0x7cd2ec8eaf5241cd, ; 508: System.Security.dll => 131
	i64 u0x7cf9ae50dd350622, ; 509: Xamarin.Jetbrains.Annotations.dll => 306
	i64 u0x7d649b75d580bb42, ; 510: ms/Microsoft.Maui.Controls.resources.dll => 333
	i64 u0x7d8ee2bdc8e3aad1, ; 511: System.Numerics.Vectors => 83
	i64 u0x7dc2a070ce60a1e2, ; 512: itext.bouncy-castle-connector.dll => 184
	i64 u0x7df5df8db8eaa6ac, ; 513: Microsoft.Extensions.Logging.Debug => 205
	i64 u0x7dfc3d6d9d8d7b70, ; 514: System.Collections => 12
	i64 u0x7e1f8f575a3599cb, ; 515: BouncyCastle.Cryptography.dll => 175
	i64 u0x7e2e564fa2f76c65, ; 516: lib_System.Diagnostics.Tracing.dll.so => 34
	i64 u0x7e302e110e1e1346, ; 517: lib_System.Security.Claims.dll.so => 119
	i64 u0x7e4465b3f78ad8d0, ; 518: Xamarin.KotlinX.Serialization.Core.dll => 314
	i64 u0x7e571cad5915e6c3, ; 519: lib_Xamarin.AndroidX.Lifecycle.Process.dll.so => 267
	i64 u0x7e6b1ca712437d7d, ; 520: Xamarin.AndroidX.Emoji2.ViewsHelper => 256
	i64 u0x7e946809d6008ef2, ; 521: lib_System.ObjectModel.dll.so => 85
	i64 u0x7ea0272c1b4a9635, ; 522: lib_Xamarin.Android.Glide.dll.so => 225
	i64 u0x7ecc13347c8fd849, ; 523: lib_System.ComponentModel.dll.so => 18
	i64 u0x7f00ddd9b9ca5a13, ; 524: Xamarin.AndroidX.ViewPager.dll => 297
	i64 u0x7f9351cd44b1273f, ; 525: Microsoft.Extensions.Configuration.Abstractions => 199
	i64 u0x7fbd557c99b3ce6f, ; 526: lib_Xamarin.AndroidX.Lifecycle.LiveData.Core.dll.so => 265
	i64 u0x8076a9a44a2ca331, ; 527: System.Net.Quic => 72
	i64 u0x80b7e726b0280681, ; 528: Microsoft.VisualStudio.DesignTools.MobileTapContracts => 351
	i64 u0x80da183a87731838, ; 529: System.Reflection.Metadata => 95
	i64 u0x80fa55b6d1b0be99, ; 530: SQLitePCLRaw.provider.e_sqlite3 => 223
	i64 u0x812c069d5cdecc17, ; 531: System.dll => 165
	i64 u0x81381be520a60adb, ; 532: Xamarin.AndroidX.Interpolator.dll => 260
	i64 u0x81657cec2b31e8aa, ; 533: System.Net => 82
	i64 u0x81ab745f6c0f5ce6, ; 534: zh-Hant/Microsoft.Maui.Controls.resources => 349
	i64 u0x8277f2be6b5ce05f, ; 535: Xamarin.AndroidX.AppCompat => 234
	i64 u0x828f06563b30bc50, ; 536: lib_Xamarin.AndroidX.CardView.dll.so => 239
	i64 u0x82920a8d9194a019, ; 537: Xamarin.KotlinX.AtomicFU.Jvm.dll => 310
	i64 u0x82b399cb01b531c4, ; 538: lib_System.Web.dll.so => 154
	i64 u0x82df8f5532a10c59, ; 539: lib_System.Drawing.dll.so => 36
	i64 u0x82f0b6e911d13535, ; 540: lib_System.Transactions.dll.so => 151
	i64 u0x82f6403342e12049, ; 541: uk/Microsoft.Maui.Controls.resources => 345
	i64 u0x83144699b312ad81, ; 542: SQLite-net.dll => 219
	i64 u0x833edc738697d898, ; 543: itext.layout.dll => 188
	i64 u0x8350268f9d350eec, ; 544: itext.commons => 194
	i64 u0x83c14ba66c8e2b8c, ; 545: zh-Hans/Microsoft.Maui.Controls.resources => 348
	i64 u0x846ce984efea52c7, ; 546: System.Threading.Tasks.Parallel.dll => 144
	i64 u0x84ae73148a4557d2, ; 547: lib_System.IO.Pipes.dll.so => 56
	i64 u0x84b01102c12a9232, ; 548: System.Runtime.Serialization.Json.dll => 113
	i64 u0x84f9060cc4a93c8f, ; 549: lib_SkiaSharp.dll.so => 218
	i64 u0x850c5ba0b57ce8e7, ; 550: lib_Xamarin.AndroidX.Collection.dll.so => 240
	i64 u0x851d02edd334b044, ; 551: Xamarin.AndroidX.VectorDrawable => 294
	i64 u0x85c919db62150978, ; 552: Xamarin.AndroidX.Transition.dll => 293
	i64 u0x85f6c4703f57fc3d, ; 553: Xceed.Drawing.NET.dll => 178
	i64 u0x8662aaeb94fef37f, ; 554: lib_System.Dynamic.Runtime.dll.so => 37
	i64 u0x86a909228dc7657b, ; 555: lib-zh-Hant-Microsoft.Maui.Controls.resources.dll.so => 349
	i64 u0x86b3e00c36b84509, ; 556: Microsoft.Extensions.Configuration.dll => 198
	i64 u0x86b62cb077ec4fd7, ; 557: System.Runtime.Serialization.Xml => 115
	i64 u0x8706ffb12bf3f53d, ; 558: Xamarin.AndroidX.Annotation.Experimental => 232
	i64 u0x872a5b14c18d328c, ; 559: System.ComponentModel.DataAnnotations => 14
	i64 u0x872fb9615bc2dff0, ; 560: Xamarin.Android.Glide.Annotations.dll => 226
	i64 u0x87c69b87d9283884, ; 561: lib_System.Threading.Thread.dll.so => 146
	i64 u0x87f6569b25707834, ; 562: System.IO.Compression.Brotli.dll => 43
	i64 u0x8808a9d7c53dc4c0, ; 563: lib_HarfBuzzSharp.dll.so => 182
	i64 u0x8842b3a5d2d3fb36, ; 564: Microsoft.Maui.Essentials => 211
	i64 u0x88926583efe7ee86, ; 565: Xamarin.AndroidX.Activity.Ktx.dll => 230
	i64 u0x88ba6bc4f7762b03, ; 566: lib_System.Reflection.dll.so => 98
	i64 u0x88bda98e0cffb7a9, ; 567: lib_Xamarin.KotlinX.Coroutines.Core.Jvm.dll.so => 313
	i64 u0x8930322c7bd8f768, ; 568: netstandard => 168
	i64 u0x897a606c9e39c75f, ; 569: lib_System.ComponentModel.Primitives.dll.so => 16
	i64 u0x89911a22005b92b7, ; 570: System.IO.FileSystem.DriveInfo.dll => 48
	i64 u0x89c5188089ec2cd5, ; 571: lib_System.Runtime.InteropServices.RuntimeInformation.dll.so => 107
	i64 u0x8a19e3dc71b34b2c, ; 572: System.Reflection.TypeExtensions.dll => 97
	i64 u0x8ad229ea26432ee2, ; 573: Xamarin.AndroidX.Loader => 276
	i64 u0x8aed8bcfab24aa6d, ; 574: itext.svg => 193
	i64 u0x8b4ff5d0fdd5faa1, ; 575: lib_System.Diagnostics.DiagnosticSource.dll.so => 27
	i64 u0x8b541d476eb3774c, ; 576: System.Security.Principal.Windows => 128
	i64 u0x8b8d01333a96d0b5, ; 577: System.Diagnostics.Process.dll => 29
	i64 u0x8b9ceca7acae3451, ; 578: lib-he-Microsoft.Maui.Controls.resources.dll.so => 325
	i64 u0x8c4e8fc055a910fb, ; 579: lib_SixLabors.ImageSharp.dll.so => 216
	i64 u0x8cb8f612b633affb, ; 580: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 287
	i64 u0x8cdfdb4ce85fb925, ; 581: lib_System.Security.Principal.Windows.dll.so => 128
	i64 u0x8cdfe7b8f4caa426, ; 582: System.IO.Compression.FileSystem => 44
	i64 u0x8d0f420977c2c1c7, ; 583: Xamarin.AndroidX.CursorAdapter.dll => 249
	i64 u0x8d52f7ea2796c531, ; 584: Xamarin.AndroidX.Emoji2.dll => 255
	i64 u0x8d7b8ab4b3310ead, ; 585: System.Threading => 149
	i64 u0x8da188285aadfe8e, ; 586: System.Collections.Concurrent => 8
	i64 u0x8e9fea88dbca012d, ; 587: Xceed.Document.NET => 177
	i64 u0x8ec6e06a61c1baeb, ; 588: lib_Newtonsoft.Json.dll.so => 213
	i64 u0x8ed807bfe9858dfc, ; 589: Xamarin.AndroidX.Navigation.Common => 278
	i64 u0x8ee08b8194a30f48, ; 590: lib-hi-Microsoft.Maui.Controls.resources.dll.so => 326
	i64 u0x8ef7601039857a44, ; 591: lib-ro-Microsoft.Maui.Controls.resources.dll.so => 339
	i64 u0x8ef9414937d93a0a, ; 592: SQLitePCLRaw.core.dll => 221
	i64 u0x8f32c6f611f6ffab, ; 593: pt/Microsoft.Maui.Controls.resources.dll => 338
	i64 u0x8f44b45eb046bbd1, ; 594: System.ServiceModel.Web.dll => 132
	i64 u0x8f8829d21c8985a4, ; 595: lib-pt-BR-Microsoft.Maui.Controls.resources.dll.so => 337
	i64 u0x8fbf5b0114c6dcef, ; 596: System.Globalization.dll => 42
	i64 u0x8fcc8c2a81f3d9e7, ; 597: Xamarin.KotlinX.Serialization.Core => 314
	i64 u0x8fd27d934d7b3a55, ; 598: SQLitePCLRaw.core => 221
	i64 u0x90263f8448b8f572, ; 599: lib_System.Diagnostics.TraceSource.dll.so => 33
	i64 u0x903101b46fb73a04, ; 600: _Microsoft.Android.Resource.Designer => 353
	i64 u0x90393bd4865292f3, ; 601: lib_System.IO.Compression.dll.so => 46
	i64 u0x905e2b8e7ae91ae6, ; 602: System.Threading.Tasks.Extensions.dll => 143
	i64 u0x90634f86c5ebe2b5, ; 603: Xamarin.AndroidX.Lifecycle.ViewModel.Android => 273
	i64 u0x907b636704ad79ef, ; 604: lib_Microsoft.Maui.Controls.Xaml.dll.so => 209
	i64 u0x90e9efbfd68593e0, ; 605: lib_Xamarin.AndroidX.Lifecycle.LiveData.dll.so => 264
	i64 u0x91418dc638b29e68, ; 606: lib_Xamarin.AndroidX.CustomView.dll.so => 250
	i64 u0x9157bd523cd7ed36, ; 607: lib_System.Text.Json.dll.so => 138
	i64 u0x91a74f07b30d37e2, ; 608: System.Linq.dll => 62
	i64 u0x91cb86ea3b17111d, ; 609: System.ServiceModel.Web => 132
	i64 u0x91fa41a87223399f, ; 610: ca/Microsoft.Maui.Controls.resources.dll => 317
	i64 u0x92054e486c0c7ea7, ; 611: System.IO.FileSystem.DriveInfo => 48
	i64 u0x928614058c40c4cd, ; 612: lib_System.Xml.XPath.XDocument.dll.so => 160
	i64 u0x92b138fffca2b01e, ; 613: lib_Xamarin.AndroidX.Arch.Core.Runtime.dll.so => 237
	i64 u0x92dfc2bfc6c6a888, ; 614: Xamarin.AndroidX.Lifecycle.LiveData => 264
	i64 u0x933da2c779423d68, ; 615: Xamarin.Android.Glide.Annotations => 226
	i64 u0x9388aad9b7ae40ce, ; 616: lib_Xamarin.AndroidX.Lifecycle.Common.dll.so => 262
	i64 u0x93cfa73ab28d6e35, ; 617: ms/Microsoft.Maui.Controls.resources => 333
	i64 u0x941c00d21e5c0679, ; 618: lib_Xamarin.AndroidX.Transition.dll.so => 293
	i64 u0x944077d8ca3c6580, ; 619: System.IO.Compression.dll => 46
	i64 u0x948cffedc8ed7960, ; 620: System.Xml => 164
	i64 u0x94c8990839c4bdb1, ; 621: lib_Xamarin.AndroidX.Interpolator.dll.so => 260
	i64 u0x950e05522f52cf36, ; 622: GemBox.Document.dll => 180
	i64 u0x967fc325e09bfa8c, ; 623: es/Microsoft.Maui.Controls.resources => 322
	i64 u0x9686161486d34b81, ; 624: lib_Xamarin.AndroidX.ExifInterface.dll.so => 257
	i64 u0x9732d8dbddea3d9a, ; 625: id/Microsoft.Maui.Controls.resources => 329
	i64 u0x978be80e5210d31b, ; 626: Microsoft.Maui.Graphics.dll => 212
	i64 u0x97b8c771ea3e4220, ; 627: System.ComponentModel.dll => 18
	i64 u0x97e144c9d3c6976e, ; 628: System.Collections.Concurrent.dll => 8
	i64 u0x984184e3c70d4419, ; 629: GoogleGson => 181
	i64 u0x9843944103683dd3, ; 630: Xamarin.AndroidX.Core.Core.Ktx => 248
	i64 u0x98d720cc4597562c, ; 631: System.Security.Cryptography.OpenSsl => 124
	i64 u0x991d510397f92d9d, ; 632: System.Linq.Expressions => 59
	i64 u0x996ceeb8a3da3d67, ; 633: System.Threading.Overlapped.dll => 141
	i64 u0x999cb19e1a04ffd3, ; 634: CommunityToolkit.Mvvm.dll => 176
	i64 u0x99a00ca5270c6878, ; 635: Xamarin.AndroidX.Navigation.Runtime => 280
	i64 u0x99cdc6d1f2d3a72f, ; 636: ko/Microsoft.Maui.Controls.resources.dll => 332
	i64 u0x9a01b1da98b6ee10, ; 637: Xamarin.AndroidX.Lifecycle.Runtime.dll => 268
	i64 u0x9a5ccc274fd6e6ee, ; 638: Jsr305Binding.dll => 302
	i64 u0x9ae6940b11c02876, ; 639: lib_Xamarin.AndroidX.Window.dll.so => 299
	i64 u0x9b211a749105beac, ; 640: System.Transactions.Local => 150
	i64 u0x9b8734714671022d, ; 641: System.Threading.Tasks.Dataflow.dll => 142
	i64 u0x9bc6aea27fbf034f, ; 642: lib_Xamarin.KotlinX.Coroutines.Core.dll.so => 312
	i64 u0x9bd8cc74558ad4c7, ; 643: Xamarin.KotlinX.AtomicFU => 309
	i64 u0x9c244ac7cda32d26, ; 644: System.Security.Cryptography.X509Certificates.dll => 126
	i64 u0x9c465f280cf43733, ; 645: lib_Xamarin.KotlinX.Coroutines.Android.dll.so => 311
	i64 u0x9c8f6872beab6408, ; 646: System.Xml.XPath.XDocument.dll => 160
	i64 u0x9ce01cf91101ae23, ; 647: System.Xml.XmlDocument => 162
	i64 u0x9d128180c81d7ce6, ; 648: Xamarin.AndroidX.CustomView.PoolingContainer => 251
	i64 u0x9d5dbcf5a48583fe, ; 649: lib_Xamarin.AndroidX.Activity.dll.so => 229
	i64 u0x9d74dee1a7725f34, ; 650: Microsoft.Extensions.Configuration.Abstractions.dll => 199
	i64 u0x9e4534b6adaf6e84, ; 651: nl/Microsoft.Maui.Controls.resources => 335
	i64 u0x9e4b95dec42769f7, ; 652: System.Diagnostics.Debug.dll => 26
	i64 u0x9eaf1efdf6f7267e, ; 653: Xamarin.AndroidX.Navigation.Common.dll => 278
	i64 u0x9eeec7beda8fafa4, ; 654: BouncyCastle.Crypto.dll => 214
	i64 u0x9ef542cf1f78c506, ; 655: Xamarin.AndroidX.Lifecycle.LiveData.Core => 265
	i64 u0xa00832eb975f56a8, ; 656: lib_System.Net.dll.so => 82
	i64 u0xa033e501b291e851, ; 657: itext.kernel => 187
	i64 u0xa0ad78236b7b267f, ; 658: Xamarin.AndroidX.Window => 299
	i64 u0xa0d8259f4cc284ec, ; 659: lib_System.Security.Cryptography.dll.so => 127
	i64 u0xa0e17ca50c77a225, ; 660: lib_Xamarin.Google.Crypto.Tink.Android.dll.so => 303
	i64 u0xa0ff9b3e34d92f11, ; 661: lib_System.Resources.Writer.dll.so => 101
	i64 u0xa12fbfb4da97d9f3, ; 662: System.Threading.Timer.dll => 148
	i64 u0xa1440773ee9d341e, ; 663: Xamarin.Google.Android.Material => 301
	i64 u0xa1b9d7c27f47219f, ; 664: Xamarin.AndroidX.Navigation.UI.dll => 281
	i64 u0xa239865e2aad0ab4, ; 665: lib_itextsharp.dll.so => 195
	i64 u0xa2572680829d2c7c, ; 666: System.IO.Pipelines.dll => 54
	i64 u0xa26597e57ee9c7f6, ; 667: System.Xml.XmlDocument.dll => 162
	i64 u0xa308401900e5bed3, ; 668: lib_mscorlib.dll.so => 167
	i64 u0xa395572e7da6c99d, ; 669: lib_System.Security.dll.so => 131
	i64 u0xa3e683f24b43af6f, ; 670: System.Dynamic.Runtime.dll => 37
	i64 u0xa4145becdee3dc4f, ; 671: Xamarin.AndroidX.VectorDrawable.Animated => 295
	i64 u0xa46aa1eaa214539b, ; 672: ko/Microsoft.Maui.Controls.resources => 332
	i64 u0xa4d20d2ff0563d26, ; 673: lib_CommunityToolkit.Mvvm.dll.so => 176
	i64 u0xa4edc8f2ceae241a, ; 674: System.Data.Common.dll => 22
	i64 u0xa5494f40f128ce6a, ; 675: System.Runtime.Serialization.Formatters.dll => 112
	i64 u0xa54b74df83dce92b, ; 676: System.Reflection.DispatchProxy => 90
	i64 u0xa579ed010d7e5215, ; 677: Xamarin.AndroidX.DocumentFile => 252
	i64 u0xa5b7152421ed6d98, ; 678: lib_System.IO.FileSystem.Watcher.dll.so => 50
	i64 u0xa5c3844f17b822db, ; 679: lib_System.Linq.Parallel.dll.so => 60
	i64 u0xa5ce5c755bde8cb8, ; 680: lib_System.Security.Cryptography.Csp.dll.so => 122
	i64 u0xa5e599d1e0524750, ; 681: System.Numerics.Vectors.dll => 83
	i64 u0xa5f1ba49b85dd355, ; 682: System.Security.Cryptography.dll => 127
	i64 u0xa60fdaa9af524b6a, ; 683: Microsoft.DotNet.PlatformAbstractions.dll => 197
	i64 u0xa61975a5a37873ea, ; 684: lib_System.Xml.XmlSerializer.dll.so => 163
	i64 u0xa6593e21584384d2, ; 685: lib_Jsr305Binding.dll.so => 302
	i64 u0xa66cbee0130865f7, ; 686: lib_WindowsBase.dll.so => 166
	i64 u0xa67dbee13e1df9ca, ; 687: Xamarin.AndroidX.SavedState.dll => 286
	i64 u0xa684b098dd27b296, ; 688: lib_Xamarin.AndroidX.Security.SecurityCrypto.dll.so => 288
	i64 u0xa68a420042bb9b1f, ; 689: Xamarin.AndroidX.DrawerLayout.dll => 253
	i64 u0xa6d26156d1cacc7c, ; 690: Xamarin.Android.Glide.dll => 225
	i64 u0xa75386b5cb9595aa, ; 691: Xamarin.AndroidX.Lifecycle.Runtime.Android => 269
	i64 u0xa763fbb98df8d9fb, ; 692: lib_Microsoft.Win32.Primitives.dll.so => 4
	i64 u0xa78ce3745383236a, ; 693: Xamarin.AndroidX.Lifecycle.Common.Jvm => 263
	i64 u0xa7c31b56b4dc7b33, ; 694: hu/Microsoft.Maui.Controls.resources => 328
	i64 u0xa7eab29ed44b4e7a, ; 695: Mono.Android.Export => 170
	i64 u0xa8195217cbf017b7, ; 696: Microsoft.VisualBasic.Core => 2
	i64 u0xa859a95830f367ff, ; 697: lib_Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll.so => 274
	i64 u0xa8b52f21e0dbe690, ; 698: System.Runtime.Serialization.dll => 116
	i64 u0xa8ee4ed7de2efaee, ; 699: Xamarin.AndroidX.Annotation.dll => 231
	i64 u0xa8f6931f9487a072, ; 700: lib_APPOS.dll.so => 0
	i64 u0xa95590e7c57438a4, ; 701: System.Configuration => 19
	i64 u0xaa2219c8e3449ff5, ; 702: Microsoft.Extensions.Logging.Abstractions => 204
	i64 u0xaa443ac34067eeef, ; 703: System.Private.Xml.dll => 89
	i64 u0xaa52de307ef5d1dd, ; 704: System.Net.Http => 65
	i64 u0xaa9a7b0214a5cc5c, ; 705: System.Diagnostics.StackTrace.dll => 30
	i64 u0xaaaf86367285a918, ; 706: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 201
	i64 u0xaaf84bb3f052a265, ; 707: el/Microsoft.Maui.Controls.resources => 321
	i64 u0xab9af77b5b67a0b8, ; 708: Xamarin.AndroidX.ConstraintLayout.Core => 245
	i64 u0xab9c1b2687d86b0b, ; 709: lib_System.Linq.Expressions.dll.so => 59
	i64 u0xac2af3fa195a15ce, ; 710: System.Runtime.Numerics => 111
	i64 u0xac5376a2a538dc10, ; 711: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 265
	i64 u0xac5acae88f60357e, ; 712: System.Diagnostics.Tools.dll => 32
	i64 u0xac79c7e46047ad98, ; 713: System.Security.Principal.Windows.dll => 128
	i64 u0xac98d31068e24591, ; 714: System.Xml.XDocument => 159
	i64 u0xacd46e002c3ccb97, ; 715: ro/Microsoft.Maui.Controls.resources => 339
	i64 u0xacdd9e4180d56dda, ; 716: Xamarin.AndroidX.Concurrent.Futures => 243
	i64 u0xacf42eea7ef9cd12, ; 717: System.Threading.Channels => 140
	i64 u0xacf6fdf873a3ce67, ; 718: lib_itext.bouncy-castle-connector.dll.so => 184
	i64 u0xad7e82ed3b0f16d0, ; 719: lib_Xamarin.AndroidX.DocumentFile.dll.so => 252
	i64 u0xad89c07347f1bad6, ; 720: nl/Microsoft.Maui.Controls.resources.dll => 335
	i64 u0xadbb53caf78a79d2, ; 721: System.Web.HttpUtility => 153
	i64 u0xadc90ab061a9e6e4, ; 722: System.ComponentModel.TypeConverter.dll => 17
	i64 u0xadca1b9030b9317e, ; 723: Xamarin.AndroidX.Collection.Ktx => 242
	i64 u0xadd8eda2edf396ad, ; 724: Xamarin.Android.Glide.GifDecoder => 228
	i64 u0xadf4cf30debbeb9a, ; 725: System.Net.ServicePoint.dll => 75
	i64 u0xadf511667bef3595, ; 726: System.Net.Security => 74
	i64 u0xae0aaa94fdcfce0f, ; 727: System.ComponentModel.EventBasedAsync.dll => 15
	i64 u0xae282bcd03739de7, ; 728: Java.Interop => 169
	i64 u0xae53579c90db1107, ; 729: System.ObjectModel.dll => 85
	i64 u0xae7ea18c61eef394, ; 730: SQLite-net => 219
	i64 u0xaec7c0c7e2ed4575, ; 731: lib_Xamarin.KotlinX.AtomicFU.Jvm.dll.so => 310
	i64 u0xaf2e760f9c91cb86, ; 732: itext.layout => 188
	i64 u0xaf732d0b2193b8f5, ; 733: System.Security.Cryptography.OpenSsl.dll => 124
	i64 u0xafdb94dbccd9d11c, ; 734: Xamarin.AndroidX.Lifecycle.LiveData.dll => 264
	i64 u0xafe29f45095518e7, ; 735: lib_Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll.so => 275
	i64 u0xb03ae931fb25607e, ; 736: Xamarin.AndroidX.ConstraintLayout => 244
	i64 u0xb05cc42cd94c6d9d, ; 737: lib-sv-Microsoft.Maui.Controls.resources.dll.so => 342
	i64 u0xb0a375a4b20391dc, ; 738: GemBox.Document => 180
	i64 u0xb0ac21bec8f428c5, ; 739: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.Android.dll => 271
	i64 u0xb0bb43dc52ea59f9, ; 740: System.Diagnostics.Tracing.dll => 34
	i64 u0xb1dd05401aa8ee63, ; 741: System.Security.AccessControl => 118
	i64 u0xb220631954820169, ; 742: System.Text.RegularExpressions => 139
	i64 u0xb2376e1dbf8b4ed7, ; 743: System.Security.Cryptography.Csp => 122
	i64 u0xb27d64a740cc8c9c, ; 744: lib_itext.styledxmlparser.dll.so => 192
	i64 u0xb2a1959fe95c5402, ; 745: lib_System.Runtime.InteropServices.JavaScript.dll.so => 106
	i64 u0xb2a3f67f3bf29fce, ; 746: da/Microsoft.Maui.Controls.resources => 319
	i64 u0xb3011a0a57f7ffb2, ; 747: Microsoft.VisualStudio.DesignTools.MobileTapContracts.dll => 351
	i64 u0xb3874072ee0ecf8c, ; 748: Xamarin.AndroidX.VectorDrawable.Animated.dll => 295
	i64 u0xb3f0a0fcda8d3ebc, ; 749: Xamarin.AndroidX.CardView => 239
	i64 u0xb46be1aa6d4fff93, ; 750: hi/Microsoft.Maui.Controls.resources => 326
	i64 u0xb477491be13109d8, ; 751: ar/Microsoft.Maui.Controls.resources => 316
	i64 u0xb4bd7015ecee9d86, ; 752: System.IO.Pipelines => 54
	i64 u0xb4c53d9749c5f226, ; 753: lib_System.IO.FileSystem.AccessControl.dll.so => 47
	i64 u0xb4c8142c581fa7a2, ; 754: itext.forms.dll => 185
	i64 u0xb4ff710863453fda, ; 755: System.Diagnostics.FileVersionInfo.dll => 28
	i64 u0xb50d9ae4eea71e97, ; 756: lib_Microsoft.DotNet.PlatformAbstractions.dll.so => 197
	i64 u0xb5c38bf497a4cfe2, ; 757: lib_System.Threading.Tasks.dll.so => 145
	i64 u0xb5c7fcdafbc67ee4, ; 758: Microsoft.Extensions.Logging.Abstractions.dll => 204
	i64 u0xb5c8aa9f91f4aa75, ; 759: APPOS => 0
	i64 u0xb5ea31d5244c6626, ; 760: System.Threading.ThreadPool.dll => 147
	i64 u0xb66575354464a3ec, ; 761: Xamarin.Kotlin.StdLib.Common => 308
	i64 u0xb71e58d502bd29dc, ; 762: itext.styledxmlparser.dll => 192
	i64 u0xb7212c4683a94afe, ; 763: System.Drawing.Primitives => 35
	i64 u0xb7b7753d1f319409, ; 764: sv/Microsoft.Maui.Controls.resources => 342
	i64 u0xb81a2c6e0aee50fe, ; 765: lib_System.Private.CoreLib.dll.so => 173
	i64 u0xb8b0a9b3dfbc5cb7, ; 766: Xamarin.AndroidX.Window.Extensions.Core.Core => 300
	i64 u0xb8c60af47c08d4da, ; 767: System.Net.ServicePoint => 75
	i64 u0xb8e68d20aad91196, ; 768: lib_System.Xml.XPath.dll.so => 161
	i64 u0xb9185c33a1643eed, ; 769: Microsoft.CSharp.dll => 1
	i64 u0xb9b8001adf4ed7cc, ; 770: lib_Xamarin.AndroidX.SlidingPaneLayout.dll.so => 289
	i64 u0xb9f64d3b230def68, ; 771: lib-pt-Microsoft.Maui.Controls.resources.dll.so => 338
	i64 u0xb9fc3c8a556e3691, ; 772: ja/Microsoft.Maui.Controls.resources => 331
	i64 u0xba0f52acac7e7a84, ; 773: itext.kernel.dll => 187
	i64 u0xba4670aa94a2b3c6, ; 774: lib_System.Xml.XDocument.dll.so => 159
	i64 u0xba48785529705af9, ; 775: System.Collections.dll => 12
	i64 u0xba965b8c86359996, ; 776: lib_System.Windows.dll.so => 155
	i64 u0xbb286883bc35db36, ; 777: System.Transactions.dll => 151
	i64 u0xbb65706fde942ce3, ; 778: System.Net.Sockets => 76
	i64 u0xbba28979413cad9e, ; 779: lib_System.Runtime.CompilerServices.VisualC.dll.so => 103
	i64 u0xbbd180354b67271a, ; 780: System.Runtime.Serialization.Formatters => 112
	i64 u0xbc22a245dab70cb4, ; 781: lib_SQLitePCLRaw.provider.e_sqlite3.dll.so => 223
	i64 u0xbc260cdba33291a3, ; 782: Xamarin.AndroidX.Arch.Core.Common.dll => 236
	i64 u0xbc41034a90e7d095, ; 783: lib_itext.forms.dll.so => 185
	i64 u0xbd0e2c0d55246576, ; 784: System.Net.Http.dll => 65
	i64 u0xbd3fbd85b9e1cb29, ; 785: lib_System.Net.HttpListener.dll.so => 66
	i64 u0xbd437a2cdb333d0d, ; 786: Xamarin.AndroidX.ViewPager2 => 298
	i64 u0xbd4f572d2bd0a789, ; 787: System.IO.Compression.ZipFile.dll => 45
	i64 u0xbd5499b8e3855c06, ; 788: lib_GemBox.Document.dll.so => 180
	i64 u0xbd5d0b88d3d647a5, ; 789: lib_Xamarin.AndroidX.Browser.dll.so => 238
	i64 u0xbd7d91e34beaf455, ; 790: itext.sign.dll => 191
	i64 u0xbd877b14d0b56392, ; 791: System.Runtime.Intrinsics.dll => 109
	i64 u0xbe65a49036345cf4, ; 792: lib_System.Buffers.dll.so => 7
	i64 u0xbee38d4a88835966, ; 793: Xamarin.AndroidX.AppCompat.AppCompatResources => 235
	i64 u0xbef9919db45b4ca7, ; 794: System.IO.Pipes.AccessControl => 55
	i64 u0xbf0fa68611139208, ; 795: lib_Xamarin.AndroidX.Annotation.dll.so => 231
	i64 u0xbfc1e1fb3095f2b3, ; 796: lib_System.Net.Http.Json.dll.so => 64
	i64 u0xc040a4ab55817f58, ; 797: ar/Microsoft.Maui.Controls.resources.dll => 316
	i64 u0xc07cadab29efeba0, ; 798: Xamarin.AndroidX.Core.Core.Ktx.dll => 248
	i64 u0xc0d928351ab5ca77, ; 799: System.Console.dll => 20
	i64 u0xc0f5a221a9383aea, ; 800: System.Runtime.Intrinsics => 109
	i64 u0xc111030af54d7191, ; 801: System.Resources.Writer => 101
	i64 u0xc12b8b3afa48329c, ; 802: lib_System.Linq.dll.so => 62
	i64 u0xc183ca0b74453aa9, ; 803: lib_System.Threading.Tasks.Dataflow.dll.so => 142
	i64 u0xc1ff9ae3cdb6e1e6, ; 804: Xamarin.AndroidX.Activity.dll => 229
	i64 u0xc2260e1da1054ac1, ; 805: lib_BouncyCastle.Cryptography.dll.so => 175
	i64 u0xc26c064effb1dea9, ; 806: System.Buffers.dll => 7
	i64 u0xc28c50f32f81cc73, ; 807: ja/Microsoft.Maui.Controls.resources.dll => 331
	i64 u0xc2902f6cf5452577, ; 808: lib_Mono.Android.Export.dll.so => 170
	i64 u0xc2a3bca55b573141, ; 809: System.IO.FileSystem.Watcher => 50
	i64 u0xc2bcfec99f69365e, ; 810: Xamarin.AndroidX.ViewPager2.dll => 298
	i64 u0xc30b52815b58ac2c, ; 811: lib_System.Runtime.Serialization.Xml.dll.so => 115
	i64 u0xc3492f8f90f96ce4, ; 812: lib_Microsoft.Extensions.DependencyModel.dll.so => 202
	i64 u0xc36d7d89c652f455, ; 813: System.Threading.Overlapped => 141
	i64 u0xc38b5d7cc4abbd1c, ; 814: BCrypt.Net-Next.dll => 174
	i64 u0xc396b285e59e5493, ; 815: GoogleGson.dll => 181
	i64 u0xc3c86c1e5e12f03d, ; 816: WindowsBase => 166
	i64 u0xc421b61fd853169d, ; 817: lib_System.Net.WebSockets.Client.dll.so => 80
	i64 u0xc463e077917aa21d, ; 818: System.Runtime.Serialization.Json => 113
	i64 u0xc4d3858ed4d08512, ; 819: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 275
	i64 u0xc50fded0ded1418c, ; 820: lib_System.ComponentModel.TypeConverter.dll.so => 17
	i64 u0xc519125d6bc8fb11, ; 821: lib_System.Net.Requests.dll.so => 73
	i64 u0xc5293b19e4dc230e, ; 822: Xamarin.AndroidX.Navigation.Fragment => 279
	i64 u0xc5325b2fcb37446f, ; 823: lib_System.Private.Xml.dll.so => 89
	i64 u0xc535cb9a21385d9b, ; 824: lib_Xamarin.Android.Glide.DiskLruCache.dll.so => 227
	i64 u0xc5a0f4b95a699af7, ; 825: lib_System.Private.Uri.dll.so => 87
	i64 u0xc5cdcd5b6277579e, ; 826: lib_System.Security.Cryptography.Algorithms.dll.so => 120
	i64 u0xc5ec286825cb0bf4, ; 827: Xamarin.AndroidX.Tracing.Tracing => 292
	i64 u0xc6706bc8aa7fe265, ; 828: Xamarin.AndroidX.Annotation.Jvm => 233
	i64 u0xc6c65ca6318f6fde, ; 829: lib_System.IO.Packaging.dll.so => 224
	i64 u0xc7c01e7d7c93a110, ; 830: System.Text.Encoding.Extensions.dll => 135
	i64 u0xc7ce851898a4548e, ; 831: lib_System.Web.HttpUtility.dll.so => 153
	i64 u0xc809d4089d2556b2, ; 832: System.Runtime.InteropServices.JavaScript.dll => 106
	i64 u0xc858a28d9ee5a6c5, ; 833: lib_System.Collections.Specialized.dll.so => 11
	i64 u0xc8ac7c6bf1c2ec51, ; 834: System.Reflection.DispatchProxy.dll => 90
	i64 u0xc902856f082a1804, ; 835: Xceed.Words.NET.dll => 179
	i64 u0xc9c62c8f354ac568, ; 836: lib_System.Diagnostics.TextWriterTraceListener.dll.so => 31
	i64 u0xca002c4df90b66fc, ; 837: lib_Xceed.Document.NET.dll.so => 177
	i64 u0xca3a723e7342c5b6, ; 838: lib-tr-Microsoft.Maui.Controls.resources.dll.so => 344
	i64 u0xca5801070d9fccfb, ; 839: System.Text.Encoding => 136
	i64 u0xca5c0406fdba256b, ; 840: lib_BCrypt.Net-Next.dll.so => 174
	i64 u0xcab3493c70141c2d, ; 841: pl/Microsoft.Maui.Controls.resources => 336
	i64 u0xcacfddc9f7c6de76, ; 842: ro/Microsoft.Maui.Controls.resources.dll => 339
	i64 u0xcadbc92899a777f0, ; 843: Xamarin.AndroidX.Startup.StartupRuntime => 290
	i64 u0xcba1cb79f45292b5, ; 844: Xamarin.Android.Glide.GifDecoder.dll => 228
	i64 u0xcbb5f80c7293e696, ; 845: lib_System.Globalization.Calendars.dll.so => 40
	i64 u0xcbd4fdd9cef4a294, ; 846: lib__Microsoft.Android.Resource.Designer.dll.so => 353
	i64 u0xcc15da1e07bbd994, ; 847: Xamarin.AndroidX.SlidingPaneLayout => 289
	i64 u0xcc2876b32ef2794c, ; 848: lib_System.Text.RegularExpressions.dll.so => 139
	i64 u0xcc5c3bb714c4561e, ; 849: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 313
	i64 u0xcc76886e09b88260, ; 850: Xamarin.KotlinX.Serialization.Core.Jvm.dll => 315
	i64 u0xcc9fa2923aa1c9ef, ; 851: System.Diagnostics.Contracts.dll => 25
	i64 u0xccf25c4b634ccd3a, ; 852: zh-Hans/Microsoft.Maui.Controls.resources.dll => 348
	i64 u0xcd10a42808629144, ; 853: System.Net.Requests => 73
	i64 u0xcd235365bb1cf97f, ; 854: lib_itext.svg.dll.so => 193
	i64 u0xcdca1b920e9f53ba, ; 855: Xamarin.AndroidX.Interpolator => 260
	i64 u0xcdd0c48b6937b21c, ; 856: Xamarin.AndroidX.SwipeRefreshLayout => 291
	i64 u0xcf23d8093f3ceadf, ; 857: System.Diagnostics.DiagnosticSource.dll => 27
	i64 u0xcf5ff6b6b2c4c382, ; 858: System.Net.Mail.dll => 67
	i64 u0xcf8fc898f98b0d34, ; 859: System.Private.Xml.Linq => 88
	i64 u0xd04b5f59ed596e31, ; 860: System.Reflection.Metadata.dll => 95
	i64 u0xd063299fcfc0c93f, ; 861: lib_System.Runtime.Serialization.Json.dll.so => 113
	i64 u0xd0af5414344dd23a, ; 862: itext.io => 186
	i64 u0xd0de8a113e976700, ; 863: System.Diagnostics.TextWriterTraceListener => 31
	i64 u0xd0fc33d5ae5d4cb8, ; 864: System.Runtime.Extensions => 104
	i64 u0xd1194e1d8a8de83c, ; 865: lib_Xamarin.AndroidX.Lifecycle.Common.Jvm.dll.so => 263
	i64 u0xd12beacdfc14f696, ; 866: System.Dynamic.Runtime => 37
	i64 u0xd198e7ce1b6a8344, ; 867: System.Net.Quic.dll => 72
	i64 u0xd1dcf65a5c5b2e92, ; 868: itext.pdfa => 189
	i64 u0xd3144156a3727ebe, ; 869: Xamarin.Google.Guava.ListenableFuture => 305
	i64 u0xd333d0af9e423810, ; 870: System.Runtime.InteropServices => 108
	i64 u0xd33a415cb4278969, ; 871: System.Security.Cryptography.Encoding.dll => 123
	i64 u0xd3426d966bb704f5, ; 872: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 235
	i64 u0xd3651b6fc3125825, ; 873: System.Private.Uri.dll => 87
	i64 u0xd373685349b1fe8b, ; 874: Microsoft.Extensions.Logging.dll => 203
	i64 u0xd3801faafafb7698, ; 875: System.Private.DataContractSerialization.dll => 86
	i64 u0xd3e4c8d6a2d5d470, ; 876: it/Microsoft.Maui.Controls.resources => 330
	i64 u0xd3edcc1f25459a50, ; 877: System.Reflection.Emit => 93
	i64 u0xd4645626dffec99d, ; 878: lib_Microsoft.Extensions.DependencyInjection.Abstractions.dll.so => 201
	i64 u0xd4fa0abb79079ea9, ; 879: System.Security.Principal.dll => 129
	i64 u0xd5507e11a2b2839f, ; 880: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 275
	i64 u0xd5d04bef8478ea19, ; 881: Xamarin.AndroidX.Tracing.Tracing.dll => 292
	i64 u0xd60815f26a12e140, ; 882: Microsoft.Extensions.Logging.Debug.dll => 205
	i64 u0xd65786d27a4ad960, ; 883: lib_Microsoft.Maui.Controls.HotReload.Forms.dll.so => 350
	i64 u0xd6694f8359737e4e, ; 884: Xamarin.AndroidX.SavedState => 286
	i64 u0xd6949e129339eae5, ; 885: lib_Xamarin.AndroidX.Core.Core.Ktx.dll.so => 248
	i64 u0xd6d21782156bc35b, ; 886: Xamarin.AndroidX.SwipeRefreshLayout.dll => 291
	i64 u0xd6de019f6af72435, ; 887: Xamarin.AndroidX.ConstraintLayout.Core.dll => 245
	i64 u0xd6f8b724c5400fc8, ; 888: BouncyCastle.Crypto => 214
	i64 u0xd70956d1e6deefb9, ; 889: Jsr305Binding => 302
	i64 u0xd72329819cbbbc44, ; 890: lib_Microsoft.Extensions.Configuration.Abstractions.dll.so => 199
	i64 u0xd72c760af136e863, ; 891: System.Xml.XmlSerializer.dll => 163
	i64 u0xd753f071e44c2a03, ; 892: lib_System.Security.SecureString.dll.so => 130
	i64 u0xd7b3764ada9d341d, ; 893: lib_Microsoft.Extensions.Logging.Abstractions.dll.so => 204
	i64 u0xd7f0088bc5ad71f2, ; 894: Xamarin.AndroidX.VersionedParcelable => 296
	i64 u0xd8fb25e28ae30a12, ; 895: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 283
	i64 u0xd9e245a1762ddad5, ; 896: BouncyCastle.Cryptography => 175
	i64 u0xd9fc7e791253de8f, ; 897: lib_itext.commons.dll.so => 194
	i64 u0xda1dfa4c534a9251, ; 898: Microsoft.Extensions.DependencyInjection => 200
	i64 u0xdad05a11827959a3, ; 899: System.Collections.NonGeneric.dll => 10
	i64 u0xdaefdfe71aa53cf9, ; 900: System.IO.FileSystem.Primitives => 49
	i64 u0xdb5383ab5865c007, ; 901: lib-vi-Microsoft.Maui.Controls.resources.dll.so => 346
	i64 u0xdb58816721c02a59, ; 902: lib_System.Reflection.Emit.ILGeneration.dll.so => 91
	i64 u0xdbeda89f832aa805, ; 903: vi/Microsoft.Maui.Controls.resources.dll => 346
	i64 u0xdbf2a779fbc3ac31, ; 904: System.Transactions.Local.dll => 150
	i64 u0xdbf9607a441b4505, ; 905: System.Linq => 62
	i64 u0xdbfc90157a0de9b0, ; 906: lib_System.Text.Encoding.dll.so => 136
	i64 u0xdc75032002d1a212, ; 907: lib_System.Transactions.Local.dll.so => 150
	i64 u0xdca8be7403f92d4f, ; 908: lib_System.Linq.Queryable.dll.so => 61
	i64 u0xdce2c53525640bf3, ; 909: Microsoft.Extensions.Logging => 203
	i64 u0xdd2b722d78ef5f43, ; 910: System.Runtime.dll => 117
	i64 u0xdd67031857c72f96, ; 911: lib_System.Text.Encodings.Web.dll.so => 137
	i64 u0xdd92e229ad292030, ; 912: System.Numerics.dll => 84
	i64 u0xdddcdd701e911af1, ; 913: lib_Xamarin.AndroidX.Legacy.Support.Core.Utils.dll.so => 261
	i64 u0xdde30e6b77aa6f6c, ; 914: lib-zh-Hans-Microsoft.Maui.Controls.resources.dll.so => 348
	i64 u0xde110ae80fa7c2e2, ; 915: System.Xml.XDocument.dll => 159
	i64 u0xde4726fcdf63a198, ; 916: Xamarin.AndroidX.Transition => 293
	i64 u0xde572c2b2fb32f93, ; 917: lib_System.Threading.Tasks.Extensions.dll.so => 143
	i64 u0xde8769ebda7d8647, ; 918: hr/Microsoft.Maui.Controls.resources.dll => 327
	i64 u0xdee075f3477ef6be, ; 919: Xamarin.AndroidX.ExifInterface.dll => 257
	i64 u0xdf4b773de8fb1540, ; 920: System.Net.dll => 82
	i64 u0xdfa254ebb4346068, ; 921: System.Net.Ping => 70
	i64 u0xdfe60c16084f6d57, ; 922: itext.pdfua.dll => 190
	i64 u0xe0142572c095a480, ; 923: Xamarin.AndroidX.AppCompat.dll => 234
	i64 u0xe021eaa401792a05, ; 924: System.Text.Encoding.dll => 136
	i64 u0xe02f89350ec78051, ; 925: Xamarin.AndroidX.CoordinatorLayout.dll => 246
	i64 u0xe0496b9d65ef5474, ; 926: Xamarin.Android.Glide.DiskLruCache.dll => 227
	i64 u0xe10b760bb1462e7a, ; 927: lib_System.Security.Cryptography.Primitives.dll.so => 125
	i64 u0xe1566bbdb759c5af, ; 928: Microsoft.Maui.Controls.HotReload.Forms.dll => 350
	i64 u0xe192a588d4410686, ; 929: lib_System.IO.Pipelines.dll.so => 54
	i64 u0xe1a08bd3fa539e0d, ; 930: System.Runtime.Loader => 110
	i64 u0xe1a77eb8831f7741, ; 931: System.Security.SecureString.dll => 130
	i64 u0xe1b52f9f816c70ef, ; 932: System.Private.Xml.Linq.dll => 88
	i64 u0xe1e199c8ab02e356, ; 933: System.Data.DataSetExtensions.dll => 23
	i64 u0xe1ecfdb7fff86067, ; 934: System.Net.Security.dll => 74
	i64 u0xe2252a80fe853de4, ; 935: lib_System.Security.Principal.dll.so => 129
	i64 u0xe22fa4c9c645db62, ; 936: System.Diagnostics.TextWriterTraceListener.dll => 31
	i64 u0xe2420585aeceb728, ; 937: System.Net.Requests.dll => 73
	i64 u0xe26692647e6bcb62, ; 938: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 270
	i64 u0xe29b73bc11392966, ; 939: lib-id-Microsoft.Maui.Controls.resources.dll.so => 329
	i64 u0xe2ad448dee50fbdf, ; 940: System.Xml.Serialization => 158
	i64 u0xe2d920f978f5d85c, ; 941: System.Data.DataSetExtensions => 23
	i64 u0xe2e426c7714fa0bc, ; 942: Microsoft.Win32.Primitives.dll => 4
	i64 u0xe332bacb3eb4a806, ; 943: Mono.Android.Export.dll => 170
	i64 u0xe3811d68d4fe8463, ; 944: pt-BR/Microsoft.Maui.Controls.resources.dll => 337
	i64 u0xe3a586956771a0ed, ; 945: lib_SQLite-net.dll.so => 219
	i64 u0xe3b7cbae5ad66c75, ; 946: lib_System.Security.Cryptography.Encoding.dll.so => 123
	i64 u0xe494f7ced4ecd10a, ; 947: hu/Microsoft.Maui.Controls.resources.dll => 328
	i64 u0xe4a9b1e40d1e8917, ; 948: lib-fi-Microsoft.Maui.Controls.resources.dll.so => 323
	i64 u0xe4f74a0b5bf9703f, ; 949: System.Runtime.Serialization.Primitives => 114
	i64 u0xe5434e8a119ceb69, ; 950: lib_Mono.Android.dll.so => 172
	i64 u0xe55703b9ce5c038a, ; 951: System.Diagnostics.Tools => 32
	i64 u0xe57013c8afc270b5, ; 952: Microsoft.VisualBasic => 3
	i64 u0xe62913cc36bc07ec, ; 953: System.Xml.dll => 164
	i64 u0xe7bea09c4900a191, ; 954: Xamarin.AndroidX.VectorDrawable.dll => 294
	i64 u0xe7e03cc18dcdeb49, ; 955: lib_System.Diagnostics.StackTrace.dll.so => 30
	i64 u0xe7e147ff99a7a380, ; 956: lib_System.Configuration.dll.so => 19
	i64 u0xe8159f0f339a522f, ; 957: lib_itext.barcodes.dll.so => 183
	i64 u0xe86b0df4ba9e5db8, ; 958: lib_Xamarin.AndroidX.Lifecycle.Runtime.Android.dll.so => 269
	i64 u0xe896622fe0902957, ; 959: System.Reflection.Emit.dll => 93
	i64 u0xe89a2a9ef110899b, ; 960: System.Drawing.dll => 36
	i64 u0xe8c5f8c100b5934b, ; 961: Microsoft.Win32.Registry => 5
	i64 u0xe957c3976986ab72, ; 962: lib_Xamarin.AndroidX.Window.Extensions.Core.Core.dll.so => 300
	i64 u0xe975d06779bc7baf, ; 963: SixLabors.Fonts.dll => 215
	i64 u0xe98163eb702ae5c5, ; 964: Xamarin.AndroidX.Arch.Core.Runtime => 237
	i64 u0xe994f23ba4c143e5, ; 965: Xamarin.KotlinX.Coroutines.Android => 311
	i64 u0xe9b9c8c0458fd92a, ; 966: System.Windows => 155
	i64 u0xe9d166d87a7f2bdb, ; 967: lib_Xamarin.AndroidX.Startup.StartupRuntime.dll.so => 290
	i64 u0xea5a4efc2ad81d1b, ; 968: Xamarin.Google.ErrorProne.Annotations => 304
	i64 u0xeb2313fe9d65b785, ; 969: Xamarin.AndroidX.ConstraintLayout.dll => 244
	i64 u0xeb6e275e78cb8d42, ; 970: Xamarin.AndroidX.LocalBroadcastManager.dll => 277
	i64 u0xed19c616b3fcb7eb, ; 971: Xamarin.AndroidX.VersionedParcelable.dll => 296
	i64 u0xed60c6fa891c051a, ; 972: lib_Microsoft.VisualStudio.DesignTools.TapContract.dll.so => 352
	i64 u0xedc4817167106c23, ; 973: System.Net.Sockets.dll => 76
	i64 u0xedc632067fb20ff3, ; 974: System.Memory.dll => 63
	i64 u0xedc8e4ca71a02a8b, ; 975: Xamarin.AndroidX.Navigation.Runtime.dll => 280
	i64 u0xee81f5b3f1c4f83b, ; 976: System.Threading.ThreadPool => 147
	i64 u0xeeb7ebb80150501b, ; 977: lib_Xamarin.AndroidX.Collection.Jvm.dll.so => 241
	i64 u0xeefc635595ef57f0, ; 978: System.Security.Cryptography.Cng => 121
	i64 u0xef03b1b5a04e9709, ; 979: System.Text.Encoding.CodePages.dll => 134
	i64 u0xef432781d5667f61, ; 980: Xamarin.AndroidX.Print => 282
	i64 u0xef602c523fe2e87a, ; 981: lib_Xamarin.Google.Guava.ListenableFuture.dll.so => 305
	i64 u0xef6e6d3ed7611955, ; 982: itext.forms => 185
	i64 u0xef72742e1bcca27a, ; 983: Microsoft.Maui.Essentials.dll => 211
	i64 u0xefd1e0c4e5c9b371, ; 984: System.Resources.ResourceManager.dll => 100
	i64 u0xefe8f8d5ed3c72ea, ; 985: System.Formats.Tar.dll => 39
	i64 u0xefec0b7fdc57ec42, ; 986: Xamarin.AndroidX.Activity => 229
	i64 u0xf00c29406ea45e19, ; 987: es/Microsoft.Maui.Controls.resources.dll => 322
	i64 u0xf09e47b6ae914f6e, ; 988: System.Net.NameResolution => 68
	i64 u0xf0ac2b489fed2e35, ; 989: lib_System.Diagnostics.Debug.dll.so => 26
	i64 u0xf0bb49dadd3a1fe1, ; 990: lib_System.Net.ServicePoint.dll.so => 75
	i64 u0xf0de2537ee19c6ca, ; 991: lib_System.Net.WebHeaderCollection.dll.so => 78
	i64 u0xf1138779fa181c68, ; 992: lib_Xamarin.AndroidX.Lifecycle.Runtime.dll.so => 268
	i64 u0xf11b621fc87b983f, ; 993: Microsoft.Maui.Controls.Xaml.dll => 209
	i64 u0xf161f4f3c3b7e62c, ; 994: System.Data => 24
	i64 u0xf16eb650d5a464bc, ; 995: System.ValueTuple => 152
	i64 u0xf1c4b4005493d871, ; 996: System.Formats.Asn1.dll => 38
	i64 u0xf238bd79489d3a96, ; 997: lib-nl-Microsoft.Maui.Controls.resources.dll.so => 335
	i64 u0xf2feea356ba760af, ; 998: Xamarin.AndroidX.Arch.Core.Runtime.dll => 237
	i64 u0xf300e085f8acd238, ; 999: lib_System.ServiceProcess.dll.so => 133
	i64 u0xf34e52b26e7e059d, ; 1000: System.Runtime.CompilerServices.VisualC.dll => 103
	i64 u0xf37221fda4ef8830, ; 1001: lib_Xamarin.Google.Android.Material.dll.so => 301
	i64 u0xf3ad9b8fb3eefd12, ; 1002: lib_System.IO.UnmanagedMemoryStream.dll.so => 57
	i64 u0xf3ddfe05336abf29, ; 1003: System => 165
	i64 u0xf408654b2a135055, ; 1004: System.Reflection.Emit.ILGeneration.dll => 91
	i64 u0xf4103170a1de5bd0, ; 1005: System.Linq.Queryable.dll => 61
	i64 u0xf42d20c23173d77c, ; 1006: lib_System.ServiceModel.Web.dll.so => 132
	i64 u0xf4727d423e5d26f3, ; 1007: SkiaSharp => 218
	i64 u0xf4c1dd70a5496a17, ; 1008: System.IO.Compression => 46
	i64 u0xf4ecf4b9afc64781, ; 1009: System.ServiceProcess.dll => 133
	i64 u0xf4eeeaa566e9b970, ; 1010: lib_Xamarin.AndroidX.CustomView.PoolingContainer.dll.so => 251
	i64 u0xf518f63ead11fcd1, ; 1011: System.Threading.Tasks => 145
	i64 u0xf5fc7602fe27b333, ; 1012: System.Net.WebHeaderCollection => 78
	i64 u0xf6077741019d7428, ; 1013: Xamarin.AndroidX.CoordinatorLayout => 246
	i64 u0xf6742cbf457c450b, ; 1014: Xamarin.AndroidX.Lifecycle.Runtime.Android.dll => 269
	i64 u0xf70c0a7bf8ccf5af, ; 1015: System.Web => 154
	i64 u0xf7166e040fdf96f5, ; 1016: lib_itext.pdfua.dll.so => 190
	i64 u0xf77b20923f07c667, ; 1017: de/Microsoft.Maui.Controls.resources.dll => 320
	i64 u0xf7e2cac4c45067b3, ; 1018: lib_System.Numerics.Vectors.dll.so => 83
	i64 u0xf7e74930e0e3d214, ; 1019: zh-HK/Microsoft.Maui.Controls.resources.dll => 347
	i64 u0xf7fa0bf77fe677cc, ; 1020: Newtonsoft.Json.dll => 213
	i64 u0xf84773b5c81e3cef, ; 1021: lib-uk-Microsoft.Maui.Controls.resources.dll.so => 345
	i64 u0xf8aac5ea82de1348, ; 1022: System.Linq.Queryable => 61
	i64 u0xf8b77539b362d3ba, ; 1023: lib_System.Reflection.Primitives.dll.so => 96
	i64 u0xf8e045dc345b2ea3, ; 1024: lib_Xamarin.AndroidX.RecyclerView.dll.so => 284
	i64 u0xf915dc29808193a1, ; 1025: System.Web.HttpUtility.dll => 153
	i64 u0xf95306fe01fadbd0, ; 1026: itext.commons.dll => 194
	i64 u0xf96c777a2a0686f4, ; 1027: hi/Microsoft.Maui.Controls.resources.dll => 326
	i64 u0xf9be54c8bcf8ff3b, ; 1028: System.Security.AccessControl.dll => 118
	i64 u0xf9eec5bb3a6aedc6, ; 1029: Microsoft.Extensions.Options => 206
	i64 u0xfa0e82300e67f913, ; 1030: lib_System.AppContext.dll.so => 6
	i64 u0xfa2fdb27e8a2c8e8, ; 1031: System.ComponentModel.EventBasedAsync => 15
	i64 u0xfa3f278f288b0e84, ; 1032: lib_System.Net.Security.dll.so => 74
	i64 u0xfa5ed7226d978949, ; 1033: lib-ar-Microsoft.Maui.Controls.resources.dll.so => 316
	i64 u0xfa645d91e9fc4cba, ; 1034: System.Threading.Thread => 146
	i64 u0xfad4d2c770e827f9, ; 1035: lib_System.IO.IsolatedStorage.dll.so => 52
	i64 u0xfae3bcd3a0b1572a, ; 1036: lib_itext.layout.dll.so => 188
	i64 u0xfb022853d73b7fa5, ; 1037: lib_SQLitePCLRaw.batteries_v2.dll.so => 220
	i64 u0xfb06dd2338e6f7c4, ; 1038: System.Net.Ping.dll => 70
	i64 u0xfb087abe5365e3b7, ; 1039: lib_System.Data.DataSetExtensions.dll.so => 23
	i64 u0xfb846e949baff5ea, ; 1040: System.Xml.Serialization.dll => 158
	i64 u0xfbad3e4ce4b98145, ; 1041: System.Security.Cryptography.X509Certificates => 126
	i64 u0xfbf0a31c9fc34bc4, ; 1042: lib_System.Net.Http.dll.so => 65
	i64 u0xfc61ddcf78dd1f54, ; 1043: Xamarin.AndroidX.LocalBroadcastManager => 277
	i64 u0xfc6b7527cc280b3f, ; 1044: lib_System.Runtime.Serialization.Formatters.dll.so => 112
	i64 u0xfc719aec26adf9d9, ; 1045: Xamarin.AndroidX.Navigation.Fragment.dll => 279
	i64 u0xfc82690c2fe2735c, ; 1046: Xamarin.AndroidX.Lifecycle.Process.dll => 267
	i64 u0xfc93fc307d279893, ; 1047: System.IO.Pipes.AccessControl.dll => 55
	i64 u0xfcd302092ada6328, ; 1048: System.IO.MemoryMappedFiles.dll => 53
	i64 u0xfd22f00870e40ae0, ; 1049: lib_Xamarin.AndroidX.DrawerLayout.dll.so => 253
	i64 u0xfd49b3c1a76e2748, ; 1050: System.Runtime.InteropServices.RuntimeInformation => 107
	i64 u0xfd536c702f64dc47, ; 1051: System.Text.Encoding.Extensions => 135
	i64 u0xfd583f7657b6a1cb, ; 1052: Xamarin.AndroidX.Fragment => 258
	i64 u0xfd8dd91a2c26bd5d, ; 1053: Xamarin.AndroidX.Lifecycle.Runtime => 268
	i64 u0xfda36abccf05cf5c, ; 1054: System.Net.WebSockets.Client => 80
	i64 u0xfddbe9695626a7f5, ; 1055: Xamarin.AndroidX.Lifecycle.Common => 262
	i64 u0xfeae9952cf03b8cb, ; 1056: tr/Microsoft.Maui.Controls.resources => 344
	i64 u0xfebe1950717515f9, ; 1057: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 266
	i64 u0xfeca84fe7f34860b, ; 1058: HarfBuzzSharp.dll => 182
	i64 u0xff270a55858bac8d, ; 1059: System.Security.Principal => 129
	i64 u0xff9b54613e0d2cc8, ; 1060: System.Net.Http.Json => 64
	i64 u0xffdb7a971be4ec73 ; 1061: System.ValueTuple.dll => 152
], align 8

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [1062 x i32] [
	i32 42, i32 312, i32 291, i32 13, i32 280, i32 0, i32 105, i32 171,
	i32 48, i32 234, i32 7, i32 223, i32 86, i32 340, i32 318, i32 346,
	i32 254, i32 308, i32 71, i32 284, i32 12, i32 210, i32 102, i32 182,
	i32 347, i32 156, i32 19, i32 259, i32 241, i32 161, i32 256, i32 294,
	i32 167, i32 340, i32 10, i32 205, i32 295, i32 96, i32 251, i32 253,
	i32 192, i32 13, i32 206, i32 10, i32 127, i32 95, i32 140, i32 39,
	i32 341, i32 315, i32 297, i32 337, i32 172, i32 228, i32 5, i32 211,
	i32 67, i32 288, i32 130, i32 287, i32 255, i32 68, i32 242, i32 66,
	i32 57, i32 250, i32 52, i32 43, i32 125, i32 67, i32 81, i32 270,
	i32 352, i32 158, i32 92, i32 99, i32 284, i32 141, i32 151, i32 238,
	i32 324, i32 162, i32 169, i32 325, i32 174, i32 201, i32 81, i32 190,
	i32 352, i32 242, i32 4, i32 5, i32 51, i32 101, i32 202, i32 56,
	i32 214, i32 120, i32 98, i32 168, i32 118, i32 312, i32 21, i32 328,
	i32 137, i32 97, i32 315, i32 77, i32 334, i32 282, i32 290, i32 119,
	i32 8, i32 165, i32 343, i32 70, i32 227, i32 271, i32 285, i32 171,
	i32 145, i32 40, i32 288, i32 47, i32 30, i32 281, i32 332, i32 144,
	i32 206, i32 163, i32 28, i32 84, i32 292, i32 77, i32 43, i32 29,
	i32 42, i32 103, i32 117, i32 232, i32 45, i32 91, i32 343, i32 217,
	i32 56, i32 148, i32 351, i32 184, i32 195, i32 146, i32 100, i32 49,
	i32 20, i32 247, i32 114, i32 225, i32 324, i32 196, i32 303, i32 220,
	i32 307, i32 207, i32 94, i32 58, i32 329, i32 327, i32 81, i32 303,
	i32 169, i32 26, i32 71, i32 283, i32 217, i32 218, i32 257, i32 350,
	i32 345, i32 69, i32 33, i32 191, i32 323, i32 14, i32 139, i32 38,
	i32 349, i32 189, i32 243, i32 216, i32 336, i32 134, i32 92, i32 88,
	i32 149, i32 342, i32 24, i32 138, i32 57, i32 51, i32 321, i32 29,
	i32 157, i32 34, i32 164, i32 258, i32 52, i32 196, i32 353, i32 299,
	i32 90, i32 239, i32 35, i32 193, i32 324, i32 157, i32 9, i32 322,
	i32 76, i32 55, i32 210, i32 318, i32 179, i32 208, i32 13, i32 298,
	i32 198, i32 236, i32 109, i32 274, i32 32, i32 104, i32 84, i32 92,
	i32 53, i32 96, i32 306, i32 58, i32 9, i32 102, i32 250, i32 68,
	i32 195, i32 297, i32 317, i32 213, i32 224, i32 183, i32 125, i32 285,
	i32 116, i32 135, i32 126, i32 106, i32 307, i32 131, i32 238, i32 305,
	i32 147, i32 156, i32 224, i32 259, i32 247, i32 220, i32 254, i32 285,
	i32 97, i32 24, i32 289, i32 143, i32 282, i32 278, i32 3, i32 177,
	i32 167, i32 235, i32 183, i32 100, i32 161, i32 99, i32 25, i32 93,
	i32 168, i32 172, i32 230, i32 3, i32 336, i32 256, i32 217, i32 1,
	i32 114, i32 307, i32 259, i32 267, i32 33, i32 6, i32 202, i32 340,
	i32 216, i32 156, i32 338, i32 53, i32 261, i32 85, i32 296, i32 281,
	i32 44, i32 266, i32 104, i32 47, i32 138, i32 178, i32 64, i32 276,
	i32 69, i32 80, i32 59, i32 89, i32 154, i32 236, i32 133, i32 110,
	i32 330, i32 276, i32 283, i32 171, i32 134, i32 186, i32 140, i32 40,
	i32 317, i32 186, i32 222, i32 208, i32 60, i32 176, i32 187, i32 273,
	i32 79, i32 25, i32 36, i32 99, i32 270, i32 71, i32 22, i32 191,
	i32 247, i32 212, i32 341, i32 121, i32 69, i32 107, i32 347, i32 197,
	i32 277, i32 119, i32 117, i32 262, i32 263, i32 11, i32 2, i32 124,
	i32 115, i32 142, i32 41, i32 87, i32 231, i32 221, i32 173, i32 27,
	i32 148, i32 331, i32 200, i32 178, i32 304, i32 230, i32 1, i32 232,
	i32 44, i32 246, i32 149, i32 261, i32 18, i32 86, i32 319, i32 41,
	i32 266, i32 240, i32 271, i32 94, i32 203, i32 28, i32 41, i32 78,
	i32 255, i32 243, i32 144, i32 108, i32 241, i32 196, i32 11, i32 105,
	i32 137, i32 16, i32 122, i32 66, i32 157, i32 22, i32 222, i32 321,
	i32 314, i32 102, i32 200, i32 313, i32 63, i32 215, i32 58, i32 209,
	i32 320, i32 110, i32 173, i32 189, i32 311, i32 9, i32 301, i32 120,
	i32 98, i32 105, i32 274, i32 208, i32 111, i32 233, i32 49, i32 20,
	i32 273, i32 249, i32 72, i32 245, i32 155, i32 39, i32 319, i32 35,
	i32 309, i32 38, i32 325, i32 222, i32 300, i32 108, i32 334, i32 21,
	i32 306, i32 272, i32 212, i32 15, i32 207, i32 79, i32 79, i32 249,
	i32 207, i32 252, i32 279, i32 287, i32 152, i32 21, i32 210, i32 318,
	i32 50, i32 51, i32 308, i32 344, i32 334, i32 94, i32 226, i32 330,
	i32 16, i32 123, i32 327, i32 160, i32 45, i32 304, i32 181, i32 116,
	i32 63, i32 166, i32 198, i32 14, i32 215, i32 286, i32 111, i32 233,
	i32 60, i32 310, i32 121, i32 333, i32 2, i32 343, i32 258, i32 272,
	i32 309, i32 272, i32 6, i32 240, i32 323, i32 254, i32 179, i32 17,
	i32 341, i32 320, i32 77, i32 244, i32 131, i32 306, i32 333, i32 83,
	i32 184, i32 205, i32 12, i32 175, i32 34, i32 119, i32 314, i32 267,
	i32 256, i32 85, i32 225, i32 18, i32 297, i32 199, i32 265, i32 72,
	i32 351, i32 95, i32 223, i32 165, i32 260, i32 82, i32 349, i32 234,
	i32 239, i32 310, i32 154, i32 36, i32 151, i32 345, i32 219, i32 188,
	i32 194, i32 348, i32 144, i32 56, i32 113, i32 218, i32 240, i32 294,
	i32 293, i32 178, i32 37, i32 349, i32 198, i32 115, i32 232, i32 14,
	i32 226, i32 146, i32 43, i32 182, i32 211, i32 230, i32 98, i32 313,
	i32 168, i32 16, i32 48, i32 107, i32 97, i32 276, i32 193, i32 27,
	i32 128, i32 29, i32 325, i32 216, i32 287, i32 128, i32 44, i32 249,
	i32 255, i32 149, i32 8, i32 177, i32 213, i32 278, i32 326, i32 339,
	i32 221, i32 338, i32 132, i32 337, i32 42, i32 314, i32 221, i32 33,
	i32 353, i32 46, i32 143, i32 273, i32 209, i32 264, i32 250, i32 138,
	i32 62, i32 132, i32 317, i32 48, i32 160, i32 237, i32 264, i32 226,
	i32 262, i32 333, i32 293, i32 46, i32 164, i32 260, i32 180, i32 322,
	i32 257, i32 329, i32 212, i32 18, i32 8, i32 181, i32 248, i32 124,
	i32 59, i32 141, i32 176, i32 280, i32 332, i32 268, i32 302, i32 299,
	i32 150, i32 142, i32 312, i32 309, i32 126, i32 311, i32 160, i32 162,
	i32 251, i32 229, i32 199, i32 335, i32 26, i32 278, i32 214, i32 265,
	i32 82, i32 187, i32 299, i32 127, i32 303, i32 101, i32 148, i32 301,
	i32 281, i32 195, i32 54, i32 162, i32 167, i32 131, i32 37, i32 295,
	i32 332, i32 176, i32 22, i32 112, i32 90, i32 252, i32 50, i32 60,
	i32 122, i32 83, i32 127, i32 197, i32 163, i32 302, i32 166, i32 286,
	i32 288, i32 253, i32 225, i32 269, i32 4, i32 263, i32 328, i32 170,
	i32 2, i32 274, i32 116, i32 231, i32 0, i32 19, i32 204, i32 89,
	i32 65, i32 30, i32 201, i32 321, i32 245, i32 59, i32 111, i32 265,
	i32 32, i32 128, i32 159, i32 339, i32 243, i32 140, i32 184, i32 252,
	i32 335, i32 153, i32 17, i32 242, i32 228, i32 75, i32 74, i32 15,
	i32 169, i32 85, i32 219, i32 310, i32 188, i32 124, i32 264, i32 275,
	i32 244, i32 342, i32 180, i32 271, i32 34, i32 118, i32 139, i32 122,
	i32 192, i32 106, i32 319, i32 351, i32 295, i32 239, i32 326, i32 316,
	i32 54, i32 47, i32 185, i32 28, i32 197, i32 145, i32 204, i32 0,
	i32 147, i32 308, i32 192, i32 35, i32 342, i32 173, i32 300, i32 75,
	i32 161, i32 1, i32 289, i32 338, i32 331, i32 187, i32 159, i32 12,
	i32 155, i32 151, i32 76, i32 103, i32 112, i32 223, i32 236, i32 185,
	i32 65, i32 66, i32 298, i32 45, i32 180, i32 238, i32 191, i32 109,
	i32 7, i32 235, i32 55, i32 231, i32 64, i32 316, i32 248, i32 20,
	i32 109, i32 101, i32 62, i32 142, i32 229, i32 175, i32 7, i32 331,
	i32 170, i32 50, i32 298, i32 115, i32 202, i32 141, i32 174, i32 181,
	i32 166, i32 80, i32 113, i32 275, i32 17, i32 73, i32 279, i32 89,
	i32 227, i32 87, i32 120, i32 292, i32 233, i32 224, i32 135, i32 153,
	i32 106, i32 11, i32 90, i32 179, i32 31, i32 177, i32 344, i32 136,
	i32 174, i32 336, i32 339, i32 290, i32 228, i32 40, i32 353, i32 289,
	i32 139, i32 313, i32 315, i32 25, i32 348, i32 73, i32 193, i32 260,
	i32 291, i32 27, i32 67, i32 88, i32 95, i32 113, i32 186, i32 31,
	i32 104, i32 263, i32 37, i32 72, i32 189, i32 305, i32 108, i32 123,
	i32 235, i32 87, i32 203, i32 86, i32 330, i32 93, i32 201, i32 129,
	i32 275, i32 292, i32 205, i32 350, i32 286, i32 248, i32 291, i32 245,
	i32 214, i32 302, i32 199, i32 163, i32 130, i32 204, i32 296, i32 283,
	i32 175, i32 194, i32 200, i32 10, i32 49, i32 346, i32 91, i32 346,
	i32 150, i32 62, i32 136, i32 150, i32 61, i32 203, i32 117, i32 137,
	i32 84, i32 261, i32 348, i32 159, i32 293, i32 143, i32 327, i32 257,
	i32 82, i32 70, i32 190, i32 234, i32 136, i32 246, i32 227, i32 125,
	i32 350, i32 54, i32 110, i32 130, i32 88, i32 23, i32 74, i32 129,
	i32 31, i32 73, i32 270, i32 329, i32 158, i32 23, i32 4, i32 170,
	i32 337, i32 219, i32 123, i32 328, i32 323, i32 114, i32 172, i32 32,
	i32 3, i32 164, i32 294, i32 30, i32 19, i32 183, i32 269, i32 93,
	i32 36, i32 5, i32 300, i32 215, i32 237, i32 311, i32 155, i32 290,
	i32 304, i32 244, i32 277, i32 296, i32 352, i32 76, i32 63, i32 280,
	i32 147, i32 241, i32 121, i32 134, i32 282, i32 305, i32 185, i32 211,
	i32 100, i32 39, i32 229, i32 322, i32 68, i32 26, i32 75, i32 78,
	i32 268, i32 209, i32 24, i32 152, i32 38, i32 335, i32 237, i32 133,
	i32 103, i32 301, i32 57, i32 165, i32 91, i32 61, i32 132, i32 218,
	i32 46, i32 133, i32 251, i32 145, i32 78, i32 246, i32 269, i32 154,
	i32 190, i32 320, i32 83, i32 347, i32 213, i32 345, i32 61, i32 96,
	i32 284, i32 153, i32 194, i32 326, i32 118, i32 206, i32 6, i32 15,
	i32 74, i32 316, i32 146, i32 52, i32 188, i32 220, i32 70, i32 23,
	i32 158, i32 126, i32 65, i32 277, i32 112, i32 279, i32 267, i32 55,
	i32 53, i32 253, i32 107, i32 135, i32 258, i32 268, i32 80, i32 262,
	i32 344, i32 266, i32 182, i32 129, i32 64, i32 152
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 8

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 8

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 u0x0000000000000000, ; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 8

; Functions

; Function attributes: memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 8, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { memory(write, argmem: none, inaccessiblemem: none) "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { noreturn "no-trapping-math"="true" nounwind "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+fix-cortex-a53-835769,+neon,+outline-atomics,+v8a" }

; Metadata
!llvm.module.flags = !{!0, !1, !7, !8, !9, !10}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!".NET for Android remotes/origin/release/9.0.1xx @ 278e101698269c9bc8840aa94d72e7f24066a96d"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"branch-target-enforcement", i32 0}
!8 = !{i32 1, !"sign-return-address", i32 0}
!9 = !{i32 1, !"sign-return-address-all", i32 0}
!10 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
