project "ImGui"
    kind "StaticLib"
    language "C++"
    
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
        cppdialect "C++17"
        staticruntime "On"
    
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
