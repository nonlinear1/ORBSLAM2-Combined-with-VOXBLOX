file(REMOVE_RECURSE
  "voxblox_rviz_plugin_automoc.cpp"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/roscpp_generate_messages_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
