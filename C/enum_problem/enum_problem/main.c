#include <stdio.h>

enum HTTPError {
    ok=200,
    created, accepted, // 201, 202
    bad_request=400,
    unauthorized, payment_required, // 401, 402
    internal_server_error=500,
    not_implemented, bad_gateway, service_unavailable // 501, 502, 503
};

int main(int argc, const char * argv[]) {
    enum HTTPError status_code = service_unavailable;
    
    int some_numeric_code = 1024;
    
    // The compiler doesn't restrict us from assigning some invalid int
    // to this enum, becareful!
    status_code = some_numeric_code; // NOTE THIS ERROR!!! 1024 should not allow!!!
    
    switch (status_code) {
        case 200:
        case 201:
        case 202:
            printf("OK\n");
            break;
            
        default:
            printf("NOT OK\n");
            break;
    }
    
    
    
    return 0;
}
