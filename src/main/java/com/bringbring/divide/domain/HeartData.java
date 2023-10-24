package com.bringbring.divide.domain;

import com.bringbring.user.domain.User;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class HeartData {

    private Heart heart;
    private Divide divide;
    private User user;
}
