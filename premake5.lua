-- OUT_DIR and INT_DIR must be defined in the top-most premake file before including this file

project "box2d"
    language "C++"
    kind "StaticLib"
    warnings "Off"

    debugdir (OUT_DIR)
    targetdir (OUT_DIR)
    objdir (INT_DIR)

    files
    {
        "include/**.h",
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "include",
        "src"
    }

    filter "system:windows"
        systemversion "latest"
        cppdialect "C++11"

    filter "system:linux"
        systemversion "latest"
        cppdialect "gnu++11"

    filter "system:macosx"
        systemversion "latest"
        cppdialect "gnu++11"

    filter "configurations:Debug"
        runtime "Debug"
        symbols "Full"

    filter "configurations:Release"
        runtime "Release"
        symbols "Off"
        optimize "Full"
