class SimplyCppDb < Formula
    desc "C++20 wrapper around libpq for PostgreSQL, other databases to follow"
    homepage "https://github.com/roelofrossouw/simply-cpp-db"
    url "https://github.com/roelofrossouw/simply-cpp-db/archive/refs/tags/v1.4.0.tar.gz"
    sha256 "9832f3a37005eaad9e24567399c8b3183af5f8d811748dc8fb6ef2e8ea4f918f"
    license "Apache-2.0"

    depends_on "cmake" => :build
    depends_on "libpq"

    def install
        system "cmake", "-S", ".", "-B", "build", "-DSC_DB_BUILD_TESTS=OFF", *std_cmake_args
        system "cmake", "--build", "build"
        system "cmake", "--install", "build"
    end
end
