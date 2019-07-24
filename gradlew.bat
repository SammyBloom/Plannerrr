package com.example.plannerr.api;

import com.example.plannerr.models.Data;
import com.example.plannerr.models.ResponseObject;

import retrofit2.Call;
import retrofit2.http.Field;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Header;
import retrofit2.http.POST;

public interface Api {


    @FormUrlEncoded
    @POST("register")
    Call<ResponseObject> register(
            @Field("name") String username,
            @Field("email") String email,
            @Field("phone_number") String phoneNo,
            @Field("password") String password,
            @Field("password_confirmation") String cnfPassword
    );

    @FormUrlEncoded
    @POST("login")
    Call<ResponseObject> login(
            @Field("email") String email,
            @Field("password") String password
    );

    @FormUrlEncoded
    @POST("goals/create")
    Call<ResponseObject> createGoal(
            @Header("Authorization") String token,
            @Field("title") String title,
            @Field("description") String description,
            @Field("begin_date") String beginDate,
            @Field("due_date") String dueDate,
            @Field("level") String level
    );

    @GET("goals")
    Call<ResponseObject> displayAllGoals(
            @Header("Authorization") String token
    );
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      