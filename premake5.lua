project "cppfront"
    language "C++"
    cppdialect "C++latest"
	kind "ConsoleApp"
	runtime "Release"
	optimize "on"
	staticruntime "off"
		
    targetdir 	("%{wks.location}/bin/%{prj.name}/" .. outputDir)
    objdir 		("%{wks.location}/obj/%{prj.name}/" .. outputDir)

    files 
    { 
        "source/**.h", 
        "source/**.cpp",
    }
	
    filter "system:windows"
        staticruntime "off"
		
	filter "system:linux"
        pic "On"