// Configurações da solicitação em formato JSON
const requestBody = {
  origins: [
    {
      waypoint: {
        location: {
          latLng: {
            latitude: 37.7749,
            longitude: -122.4194
          }
        }
      }
    }
  ],
  destinations: [
    {
      waypoint: {
        location: {
          latLng: {
            latitude: 34.0522,
            longitude: -118.2437
          }
        }
      }
    }
  ],
  travelMode: "DRIVE",
  languageCode: "en-US"
};

  // URL da solicitação com a chave da API
  const url = "https://routes.googleapis.com/distanceMatrix/v2:computeRouteMatrix?key=AIzaSyBaKFkmIz3lxbzzhMbV7w0-_s_8I1wLEqU";
  
  // Opções da solicitação
  const requestOptions = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "X-Goog-FieldMask": "duration,distanceMeters" // Defina o FieldMask aqui
    },
    body: JSON.stringify(requestBody)
  };
  
  // Enviar solicitação usando Fetch API
  fetch(url, requestOptions)
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error("Erro:", error));
  