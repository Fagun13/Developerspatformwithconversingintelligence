package com.service;

import java.util.List;

import com.DAO.ProfileDAO;
import com.VO.ProfileVO;
import com.VO.RegistrationVO;

public class ProfileService {

	private ProfileDAO profileDAO;

	public void setProfileDAO(ProfileDAO profileDAO) {
		this.profileDAO = profileDAO;
	}
	public List fetchProfileDetailsOfUser(RegistrationVO registrationVO)
    {
		return profileDAO.fetchProfileDetailsOfUser(registrationVO);
    }
	public void saveOrEditProfile(ProfileVO profileVO)
	{
		profileDAO.saveOrEditProfile(profileVO);
	}
}
