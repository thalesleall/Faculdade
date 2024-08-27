import axios from 'axios';

const api = axios.create({
    baseURL: 'http://localhost:3001'
});

export const getCars = () => api.get('/cars');
export const getCarById = (id: string) => api.get(`/cars/${id}`);
export const createCar = (car: any) => api.post('/cars', car);
export const updateCar = (id: string, car: any) => api.put(`/cars/${id}`, car);
export const deleteCar = (id: string) => api.delete(`/cars/${id}`);
