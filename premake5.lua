project "ImGui"
    kind "StaticLib"
    language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

    files
    {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_demo.cpp",
        "imgui_draw.cpp",
        "imgui_internal.h",
        "imgui_rectpack.h",
        "imgui_tables.cpp",
        "imgui_textedit.h",
        "imgui_truetype.h",
        "imgui_widgets.cpp"
    }

	filter "system:windows"
		systemversion "latest"
        cppdialect "C++17"
		staticruntime "On"

	filter "configurations:release"
		buildoptions "/MT"
