import { GetUserDetailResponseType, LoginResponseType } from '@/models/auth';
import { storageKeys } from './storage-keys';
import { load, remove, save } from '@/utilities/local-storage';
import { IUser } from '@/models/user';

const saveDataAfterLoginGoogle = (data: LoginResponseType) => {
  save(storageKeys.USER, data);
};

const saveDataAfterLogin = (data: LoginResponseType) => {
  save(storageKeys.ACCESS_TOKEN, data.access_token);
  save(storageKeys.REFRESH_TOKEN, data.refresh_token);
};
const saveUserDetailData = (data: GetUserDetailResponseType) => {
  save(storageKeys.USER, data.user);
};

// const saveAccessToken = (accessToken: string) => {
//   save(storageKeys.ACCESS_TOKEN, accessToken);
// };

const getUser = () => {
  return load<IUser>(storageKeys.USER);
};

const getUserId = () => {
  return load<IUser['id']>(storageKeys.USER_ID);
};

const getRefreshToken = () => {
  return load<string>(storageKeys.REFRESH_TOKEN);
};
const getAccessToken = () => {
  return load<string>(storageKeys.ACCESS_TOKEN);
};

const removeUser = () => {
  remove(storageKeys.USER);
};

export const StorageFunc = {
  saveDataAfterLoginGoogle,
  saveDataAfterLogin,
  // saveAccessToken,
  getUser,
  getUserId,
  removeUser,
  getRefreshToken,
  getAccessToken,
  saveUserDetailData,
};
