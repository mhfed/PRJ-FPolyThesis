import { StorageFunc } from '@/utilities/local-storage/storage-func';
import httpRequest from '../axios-instance';
import { ApiConstants } from '../endpoints';
import {
  ForgotPasswordResponseType,
  LoginResponseType,
  RefreshTokenResponseType,
  RegisterResponseType,
  ResetPasswordResponseType,
  VerifyEmailRegisterResponseType,
} from '@/models/auth';

const Login = <T>(data: T) => {
  return httpRequest.post<LoginResponseType>(ApiConstants.LOGIN, data);
};

// Refresh token không cần gửi body data lên =))
const RefreshToken = () => {
  return httpRequest.post<RefreshTokenResponseType>(ApiConstants.REFRESH_TOKEN);
};

const Register = <T>(data: T) => {
  return httpRequest.post<RegisterResponseType>(ApiConstants.REGISTER, data);
};

const VerifyEmailRegister = <T>(data: T) => {
  return httpRequest.post<VerifyEmailRegisterResponseType>(ApiConstants.VERIFY_EMAIL_REGISTER, data);
};

const ForgotPassword = <T>(data: T) => {
  return httpRequest.post<ForgotPasswordResponseType>(ApiConstants.FORGOT_PASSWORD, data);
};

const ResetPassword = <T>(data: T) => {
  return httpRequest.post<ResetPasswordResponseType>(ApiConstants.RESET_PASSWORD, data);
};

// sau sua thanh service giong nhu tren, doan logic vut vao component
const LoginWithGoogle = () => {
  fetch('http://localhost:8000/api/auth/google-auth')
    .then(response => {
      if (response.ok) {
        return response.json();
      }
      throw new Error('Something went wrong!');
    })
    .then(({ googleLoginUrl }) => (window.location.href = googleLoginUrl))
    .then(response => {
      console.log(response);
      // save token to local storage
      if (response.data.accessToken) {
        StorageFunc.saveDataAfterLoginGoogle(response.data);
      }
    })
    .catch(error => {
      console.error('Error:', error);
    });
};

export const AuthService = {
  Login,
  Register,
  LoginWithGoogle,
  ForgotPassword,
  ResetPassword,
  VerifyEmailRegister,
  RefreshToken,
};
