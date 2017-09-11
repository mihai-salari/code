import Foundation

let coordinate = (lat: 192.89483, long: -68.887463)

switch coordinate {
case (0, _):
    print("on the equator")
case (let x, _) where x > 0:
    print("on the northern hemisphere")
case (let x, _) where x < 0:
    print("on the southern hemisphere")
default:
    print("not able to determine location")    
}
