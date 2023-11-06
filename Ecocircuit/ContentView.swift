import SwiftUI
import MapKit


struct ContentView: View {
    @State private var cameraPosition: MapCameraPosition = .region(.userRegion)
    @State private var searchText = ""
    @State private var results = [MKMapItem]()
    @State private var mapSelection: MKMapItem?
    
    var body: some View {
        
        Map(position: $cameraPosition, selection: $mapSelection){
            UserAnnotation()
            Marker("My Location", systemImage: "paperplane", coordinate: .userLocation)
                .tint(.blue)
            ForEach(results, id: \.self) { item in
                let placemark = item.placemark
                Marker(placemark.name ?? "", coordinate: placemark.coordinate)
                
            }
        }


        .overlay(alignment: .top){
            TextField("Search for a location ...", text: $searchText)
                .font(.subheadline)
                .padding(12)
                .background(.white)
                .padding()
                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .onSubmit(of: .text) {
            Task { await searchPlaces() }
    
        }
        .onChange(of: mapSelection, {oldValue, newValue in
        })
        .mapControls{
            MapCompass()
            MapPitchToggle()
            MapUserLocationButton()
        }
        
    }
}
extension ContentView {
    func searchPlaces() async {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = searchText
        request.region = .userRegion
        let results = try? await MKLocalSearch(request: request).start()
        self.results = results?.mapItems ?? []
    }
}

extension CLLocationCoordinate2D {
    static var userLocation: CLLocationCoordinate2D{
        return .init(latitude: 36.901000, longitude: 10.190120)
    }
}
extension MKCoordinateRegion{
    static var userRegion: MKCoordinateRegion{
        return .init(center: .userLocation,
                     latitudinalMeters: 10000,
                     longitudinalMeters: 10000)
    }
}
#Preview {
    ContentView()
}
