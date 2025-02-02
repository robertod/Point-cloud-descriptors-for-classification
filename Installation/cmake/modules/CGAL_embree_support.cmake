if(embree_FOUND AND NOT TARGET CGAL::Embree_support)
  add_library(CGAL::Embree_support INTERFACE IMPORTED)
  target_compile_definitions(CGAL::Embree_support INTERFACE "CGAL_LINKED_WITH_EMBREE")
  target_include_directories(CGAL::Embree_support INTERFACE "${EMBREE_INCLUDE_DIRS}")
  target_link_libraries(CGAL::Embree_support INTERFACE ${EMBREE_LIBRARIES})
else()
  message(STATUS "NOTICE: the embree library requirements not met.")
endif()