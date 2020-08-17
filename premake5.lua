project "ImGui"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    
    staticruntime "On"
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    
    files
    {
        "include/imgui/imconfig.h",
        "include/imgui/imgui.h",
        "include/imgui/imgui.cpp",
        "include/imgui/imgui_draw.cpp",
        "include/imgui/imgui_internal.h",
        "include/imgui/imgui_widgets.cpp",
        "include/imgui/imgui_rectpack.h",
        "include/imgui/imgui_textedit.h",
        "include/imgui/imgui_truetype.h",
        "include/imgui/imgui_demo.cpp",
    }
    
    filter "system:windows"
        systemversion "latest"
    
    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        optimize "off"

    filter "configurations:Release"
        runtime "Release"
        symbols "on"
        optimize "on"

    filter "configurations:Dist"
        runtime "Release"
        symbols "off"
        optimize "on"
