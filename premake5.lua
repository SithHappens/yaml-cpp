project "yaml-cpp"
  kind "StaticLib"
  language "C++"
  cppdialect "C++17"
  systemversion "latest"
  
  targetdir ("bin/" .. outputdir .. "/%{prj.name}")
  objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
  
  files
  {
    "src/**.h",
    "src/**.cpp",
    "include/**.h"
  }
  
  includedirs
  {
    "include"
  }
  
  filter "system:windows"
    staticruntime "on"

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"
  
  filter "configurations:Release"
    runtime "Release"
    optimize "on"
