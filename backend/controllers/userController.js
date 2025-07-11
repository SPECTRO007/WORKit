import userModel from "../models/userModel.js";
import validator from "validator"
import bcrypt from "bcrypt"

//  Route for User login
const loginUser = async (req, res) => {

}

//  Route for User register
const registerUser = async (req, res) => {
    try{
        const { name, email, password} = req.body;
        const exists = await userModel.findOne({email})
        if (exists) {
            return res.json({success:false, message:"User already exists"})
        }
        //  Validate email and password


        //  Hashing user password

    }
    catch (error) {

    }
}

//  Route for admin login
const adminLogin = async (req, res) => {

}

export { loginUser, registerUser, adminLogin }