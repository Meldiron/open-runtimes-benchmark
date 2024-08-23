import http from 'k6/http';
import { check } from 'k6';

export const options = {
  vus: 100,
  duration: '60s',
};

export default function () {
  const res = http.get('http://localhost:3000/');
  check(res, { 'status was 200': (r) => r.status == 200 });
}