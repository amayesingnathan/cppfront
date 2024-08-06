project "cppfront"
    language "C++"
    cppdialect "C++latest"
	kind "ConsoleApp"
	runtime "Release"
	optimize "on"
	staticruntime "off"
		
    targetdir 	"%{wks.location}/bin/%{prj.name}/"
    objdir 		"%{wks.location}/obj/%{prj.name}/"

    files 
    { 
        "source/**.h", 
        "source/**.cpp",
    }
	
    filter "system:windows"
        staticruntime "off"
		
	filter "system:linux"
        pic "On"