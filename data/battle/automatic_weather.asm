; AutomaticWeatherEffects indexes
	const_def 1
	const AUTOMATIC_SUN
	const AUTOMATIC_RAIN
	const AUTOMATIC_SANDSTORM
	const AUTOMATIC_HAIL


AutomaticWeatherMaps:
MACRO auto_weather_map
;\1: map id
;\2: AUTOMATIC_* weather index
	map_id \1
	db \2
ENDM
	auto_weather_map C2, AUTOMATIC_SUN
	auto_weather_map C3, AUTOMATIC_SUN
	auto_weather_map C4, AUTOMATIC_SUN
	auto_weather_map C5, AUTOMATIC_SUN
	auto_weather_map C6, AUTOMATIC_SUN
	auto_weather_map C7, AUTOMATIC_SUN
	auto_weather_map C8, AUTOMATIC_SUN
	auto_weather_map C9, AUTOMATIC_SUN
	auto_weather_map C10, AUTOMATIC_SUN
	auto_weather_map C11, AUTOMATIC_SUN
	auto_weather_map C12, AUTOMATIC_SUN
	auto_weather_map C13, AUTOMATIC_SUN
	auto_weather_map C14, AUTOMATIC_SUN
	auto_weather_map CBOSS, AUTOMATIC_SUN
	auto_weather_map CSHINY, AUTOMATIC_SUN

	auto_weather_map D2, AUTOMATIC_HAIL
	auto_weather_map D3, AUTOMATIC_HAIL
	auto_weather_map D4, AUTOMATIC_HAIL
	auto_weather_map D5, AUTOMATIC_HAIL
	auto_weather_map D6, AUTOMATIC_HAIL
	auto_weather_map D7, AUTOMATIC_HAIL
	auto_weather_map D8, AUTOMATIC_HAIL
	auto_weather_map D9, AUTOMATIC_HAIL
	auto_weather_map D10, AUTOMATIC_HAIL
	auto_weather_map D11, AUTOMATIC_HAIL
	auto_weather_map D12, AUTOMATIC_HAIL
	auto_weather_map D13, AUTOMATIC_HAIL
	auto_weather_map D14, AUTOMATIC_HAIL
	auto_weather_map DBOSS, AUTOMATIC_HAIL
	auto_weather_map DSHINY, AUTOMATIC_HAIL

	auto_weather_map B2, AUTOMATIC_RAIN
	auto_weather_map B3, AUTOMATIC_RAIN
	auto_weather_map B4, AUTOMATIC_RAIN
	auto_weather_map B5, AUTOMATIC_RAIN
	auto_weather_map B6, AUTOMATIC_RAIN
	auto_weather_map B7, AUTOMATIC_RAIN
	auto_weather_map B8, AUTOMATIC_RAIN
	auto_weather_map B9, AUTOMATIC_RAIN
	auto_weather_map B10, AUTOMATIC_RAIN
	auto_weather_map B11, AUTOMATIC_RAIN
	auto_weather_map B12, AUTOMATIC_RAIN
	auto_weather_map B13, AUTOMATIC_RAIN
	auto_weather_map B14, AUTOMATIC_RAIN
	auto_weather_map BBOSS, AUTOMATIC_RAIN
	auto_weather_map BSHINY, AUTOMATIC_RAIN

	auto_weather_map A2, AUTOMATIC_SANDSTORM
	auto_weather_map A3, AUTOMATIC_SANDSTORM
	auto_weather_map A4, AUTOMATIC_SANDSTORM
	auto_weather_map A5, AUTOMATIC_SANDSTORM
	auto_weather_map A6, AUTOMATIC_SANDSTORM
	auto_weather_map A7, AUTOMATIC_SANDSTORM
	auto_weather_map A8, AUTOMATIC_SANDSTORM
	auto_weather_map A9, AUTOMATIC_SANDSTORM
	auto_weather_map A10, AUTOMATIC_SANDSTORM
	auto_weather_map A11, AUTOMATIC_SANDSTORM
	auto_weather_map A12, AUTOMATIC_SANDSTORM
	auto_weather_map A13, AUTOMATIC_SANDSTORM
	auto_weather_map A14, AUTOMATIC_SANDSTORM
	auto_weather_map ABOSS, AUTOMATIC_SANDSTORM
	auto_weather_map ASHINY, AUTOMATIC_SANDSTORM
	db 0 ; end

AutomaticWeatherEffects:
; entries correspond to AUTOMATIC_* constants
MACRO auto_weather_effect
;\1: battle weather
;\2: animation
;\3: text
	db \1
	dw \2
	dw \3
ENDM

	auto_weather_effect WEATHER_SUN, SUNNY_DAY, SunGotBrightText
	auto_weather_effect WEATHER_RAIN, RAIN_DANCE, DownpourText
	auto_weather_effect WEATHER_SANDSTORM, ANIM_IN_SANDSTORM, SandstormBrewedText
	auto_weather_effect WEATHER_HAIL, ANIM_IN_HAIL, ItStartedToHailText
