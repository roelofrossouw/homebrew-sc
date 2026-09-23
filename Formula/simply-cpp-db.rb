class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.0.5.tar.gz"
    sha256 "dbae5bfa80bcbf1e37a6c76f3f89f5ed0d0b285d9c053bef55ad5289066a6a53"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "postgresql"

    def install
        system "cmake", "-S", ".", "-B", "build", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
