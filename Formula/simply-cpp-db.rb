class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.3.0.tar.gz"
    sha256 "f6816c3d7787a29d15c52bdb2520adee450b9a04f6b27a7bf8d24de1fd260d06"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_DB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
