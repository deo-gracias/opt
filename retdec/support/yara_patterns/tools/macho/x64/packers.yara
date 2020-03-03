/*
 * YARA rules for x64 Mach-O packer detection.
 * Copyright (c) 2017 Avast Software, licensed under the MIT license
 */

import "macho"

rule upx_391_lzma
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.91 [LZMA]"
		source = "Made by Retdec Team"
		pattern = "E8????????555351524801FE564180F80E0F856C0A0000554889E5448B094989D0"
	strings:
		$1 = { E8 ?? ?? ?? ?? 55 53 51 52 48 01 FE 56 41 80 F8 0E 0F 85 6C 0A 00 00 55 48 89 E5 44 8B 09 49 89 D0 }
	condition:
		$1 at macho.entry_point or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64)
}

rule upx_391_nrv2b
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.91 [NRV2B]"
		source = "Made by Retdec Team"
		pattern = "FC415B4180F802740DE9????????48FFC6881748FFC78A1601DB750A8B1E4883EEFC11DB8A1672E68D410141FFD3"
		start = 112
	strings:
		$1 = { FC 41 5B 41 80 F8 02 74 0D E9 ?? ?? ?? ?? 48 FF C6 88 17 48 FF C7 8A 16 01 DB 75 0A 8B 1E 48 83 EE FC 11 DB 8A 16 72 E6 8D 41 01 41 FF D3 }
	condition:
		$1 at macho.entry_point + 112 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 112
}

rule upx_391_nrv2d
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.91 [NRV2D]"
		source = "Made by Retdec Team"
		pattern = "FC415B4180F805740DE9????????48FFC6881748FFC78A1601DB750A8B1E4883EEFC11DB8A1672E68D4101EB07FFC841FFD3"
		start = 112
	strings:
		$1 = { FC 41 5B 41 80 F8 05 74 0D E9 ?? ?? ?? ?? 48 FF C6 88 17 48 FF C7 8A 16 01 DB 75 0A 8B 1E 48 83 EE FC 11 DB 8A 16 72 E6 8D 41 01 EB 07 FF C8 41 FF D3 }
	condition:
		$1 at macho.entry_point + 112 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 112
}

rule upx_391_nrv2e
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.91 [NRV2E]"
		source = "Made by Retdec Team"
		pattern = "FC415B4180F808740DE9????????48FFC6881748FFC78A1601DB750A8B1E4883EEFC11DB8A1672E68D4101EB07FFC841FFD3"
		start = 112
	strings:
		$1 = { FC 41 5B 41 80 F8 08 74 0D E9 ?? ?? ?? ?? 48 FF C6 88 17 48 FF C7 8A 16 01 DB 75 0A 8B 1E 48 83 EE FC 11 DB 8A 16 72 E6 8D 41 01 EB 07 FF C8 41 FF D3 }
	condition:
		$1 at macho.entry_point + 112 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 112
}

rule upx_392_lzma
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.92 [LZMA]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D158050133C10BA655505821BD0B0D2200000000??????00??????00????0000??0?00000E0000001A030067BE99AFDE39191D3F9????A"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 33 C1 0B A6 55 50 58 21 BD 0B 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 0E 00 00 00 1A 03 00 67 BE 99 AF DE 39 19 1D 3F 9? ?? ?A }

	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_392_nrv2b
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.92 [NRV2B]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D158050137F6FE4F5550582141020D2200000000??????00??????00????0000??0?000002000000????B7FFCFFAEDFE070000010303?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 37 F6 FE 4F 55 50 58 21 41 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 02 00 00 00 ?? ?? B7 FF CF FA ED FE 07 00 00 01 03 03 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_392_nrv2d
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.92 [NRV2D]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D1580501E2027CE85550582151020D2200000000??????00??????00????0000??0?000005000000????BEFFCFFAEDFE070000010307?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 E2 02 7C E8 55 50 58 21 51 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 05 00 00 00 ?? ?? BE FF CF FA ED FE 07 00 00 01 03 07 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_392_nrv2e
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.92 [NRV2E]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D1580501ED0C65235550582169020D2200000000??????00??????00????0000??0?000008000000????B6FFCFFAEDFE070000010306?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 ED 0C 65 23 55 50 58 21 69 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 08 00 00 00 ?? ?? B6 FF CF FA ED FE 07 00 00 01 03 06 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_393_lzma
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.93 [LZMA]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D158050135C1FBA655505821BD0B0D2200000000??????00??????00????0000??0?00000E0000001A030067BE99AFDE39191D3F9????A"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 35 C1 FB A6 55 50 58 21 BD 0B 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 0E 00 00 00 1A 03 00 67 BE 99 AF DE 39 19 1D 3F 9? ?? ?A }

	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_393_nrv2b
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.93 [NRV2B]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D158050139F6EA505550582141020D2200000000??????00??????00????0000??0?000002000000????B7FFCFFAEDFE070000010303?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 39 F6 EA 50 55 50 58 21 41 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 02 00 00 00 ?? ?? B7 FF CF FA ED FE 07 00 00 01 03 03 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_393_nrv2d
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.93 [NRV2D]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D1580501E4026CE95550582151020D2200000000??????00??????00????0000??0?000005000000????BEFFCFFAEDFE070000010307?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 E4 02 6C E9 55 50 58 21 51 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 05 00 00 00 ?? ?? BE FF CF FA ED FE 07 00 00 01 03 07 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_393_nrv2e
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.93 [NRV2E]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D1580501EF0C53245550582169020D2200000000??????00??????00????0000??0?000008000000????B6FFCFFAEDFE070000010306?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 EF 0C 53 24 55 50 58 21 69 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 08 00 00 00 ?? ?? B6 FF CF FA ED FE 07 00 00 01 03 06 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_394_lzma
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.94 [LZMA]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D158050178BC966855505821B50B0D2200000000??????00??????00????0000??0?00000E0000001A030067BE99AFDE39191D3F9????A"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 78 BC 96 68 55 50 58 21 B5 0B 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 0E 00 00 00 1A 03 00 67 BE 99 AF DE 39 19 1D 3F 9? ?? ?A }

	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_394_nrv2b
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.94 [NRV2B]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D1580501BEF38460555058213D020D2200000000??????00??????00????0000??0?000002000000????B7FFCFFAEDFE070000010303?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 BE F3 84 60 55 50 58 21 3D 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 02 00 00 00 ?? ?? B7 FF CF FA ED FE 07 00 00 01 03 03 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_394_nrv2d
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.94 [NRV2D]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D15805011AFE28C55550582149020D2200000000??????00??????00????0000??0?000005000000????BEFFCFFAEDFE070000010307?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 1A FE 28 C5 55 50 58 21 49 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 05 00 00 00 ?? ?? BE FF CF FA ED FE 07 00 00 01 03 07 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}

rule upx_394_nrv2e
{
	meta:
		tool = "P"
		name = "UPX"
		version = "3.94 [NRV2E]"
		source = "Made by Retdec Team"
		pattern = "FFC3010000001C000000000000001C000000000000001C00000002000000FD0800003400000034000000A90F00000000000034000000030000000C0003001800030000000002130600015D0600000000000000000001D1580501340849955550582161020D2200000000??????00??????00????0000??0?000008000000????B6FFCFFAEDFE070000010306?0020"
		start = 354
	strings:
		$1 = { FF C3 01 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 00 00 00 00 1C 00 00 00 02 00 00 00 FD 08 00 00 34 00 00 00 34 00 00 00 A9 0F 00 00 00 00 00 00 34 00 00 00 03 00 00 00 0C 00 03 00 18 00 03 00 00 00 00 02 13 06 00 01 5D 06 00 00 00 00 00 00 00 00 00 01 D1 58 05 01 34 08 49 95 55 50 58 21 61 02 0D 22 00 00 00 00 ?? ?? ?? 00 ?? ?? ?? 00 ?? ?? 00 00 ?? 0? 00 00 08 00 00 00 ?? ?? B6 FF CF FA ED FE 07 00 00 01 03 06 ?0 02 }
	condition:
		$1 at macho.entry_point + 354 or $1 at macho.entry_point_for_arch(macho.CPU_TYPE_X86_64) + 354
}