
%Nhap phuong trinh cua chuyen dong
    fxInput = input('Nhap phuong trinh x: ','s');
    fxInput = str2sym(fxInput);


    fyInput = input('Nhap phuong trinh y: ', 's');
    fyInput = str2sym(fyInput);

    syms fx(t) fy(t)
    fx(t) = fxInput;
    fy(t) = fyInput;




%Nhap thoi gian quy dao cua vat 
    StartTime = input('Nhap thoi gian moc: ');
    EndTime = input('Thoi gian cuoi: ');
    SampleSize = input('Nhap so luong lay mau (cang nhieu thi duong cang ro net): ')

    VariTime = sym(linspace(StartTime, EndTime, SampleSize));


%Ve phuong trinh chuyen dong
    X = fx(VariTime);
    Y = fy(VariTime);
    plot(X, Y);
    title('Quy dao chuyen dong cua vat')
    hold on;

%Xac dinh phuong trinh van toc cua quy dao

    syms vx(t) vy(t) v(t);
    vx(t) = diff(fx, t);
    vy(t) = diff(fy, t);
    %Van toc toan phan
    v(t) = sqrt((vx(t)^2 + (vy(t))^2));

%Xac dinh phuong trinh gia toc cua quy dao  
    syms ax(t) ay(t) a(t);
    ax(t) = diff(vx, t);
    ay(t) = diff(vy, t);
    %Gia toc toan phan
    a(t) = sqrt((ax(t)^2 + ay(t)^2));

%Xac dinh gia toc huong tam cua vat
    syms att(t) aht(t);
    att(t) = diff(v(t));
    aht(t) =  sqrt(a(t)^2 - att(t)^2);

%Xac dinh ban kinh cua quy dao
    t = sym(input('Nhap thoi diem de xac dinh ban kinh cua quy dao: '));
    disp('Ban kinh cua quy dao la (he SI): '); 
    R = (v(t)^2) / aht(t)

    disp('hoac R = ');
    double(R)



    