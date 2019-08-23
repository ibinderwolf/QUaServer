
add_executable(04_types
    main.cpp
    temperaturesensor.h
    temperaturesensor.cpp
    )

target_link_libraries(04_types
    QUaServer
    )
