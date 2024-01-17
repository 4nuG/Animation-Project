function [out, flag] = projpt2(win, coldrun, mouse)
    [foley, fs] = audioread('C:\Users\Anu5h\OneDrive\Documents\math 645.01\wand.mp3');
    wand = audioplayer(foley, fs);
    
    hb = axes('position', [0.12 0.2 0.24 0.4]);
    witch1 = plot(hb, win(1, :), win(2, :), '.', 'Color', '#EDB120');
    set(hb, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
    hold on;
    
    % Make the cauldron
    [m, n] = size(coldrun);
    coldrun = 0.075 * coldrun;
    coldrun = coldrun - [0; 0; 20] * ones(1, n);
    caul_orig = coldrun;
    
    cb = axes('position', [0.34 0.05 0.34 0.35]);
    err = plot(cb, coldrun(1, :), coldrun(2, :), 'k.');
    axis([0 60 0 601]);
    set(gca, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
    hold off;
    
    % Make mickmouse fly out
    color = {'y.', 'm.', 'c.', 'r.', 'g.', 'b.', 'k.'};
    mouse = [0.1 0 0; 0 0.1 0; 0 0 1] * mouse;
    play(wand);
    
    for j = 1:9
        % pause();
        R = [cos(j) -sin(j) 0; sin(j) cos(j) 0; 0 0 1];
        Shift = [1.3 0 10; 0 1.3 5; 0 0 1];
        mouse = Shift * mouse;
        mouse = [-1 0 1; 0 1 1; 0 0 1] * mouse;
        D1 = mouse(1:2, :);
        X = 1 + mod(j, length(color));
        
        cb = axes('position', [0.1 0.25 0.9 0.9]);
        err = plot(cb, D1(1, :), D1(2, :), color{X});
        axis([-3000 3000 0 24001]);
        set(gca, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
        pause(0.5);
        
        if j <= 9
            cla;
        end
    end
    
    pause(0.01);
    delete(witch1);
    
    % Switch and micky chase each other
    for i = 1:6
        B = mouse;
        A = [-1 0 1; 0 1 1; 0 0 1] * mouse;
        keep = 0;
        keepw = 0;
        
        for j = 0:1/6:1
            C = (1 - j) * B + j * A;
            keep = C;
            new = C(1:2, :);
            
            cb = axes('position', [0.3 0.60 0.5 0.3]);
            plot(cb, new(1, :), new(2, :), 'k.');
            axis([-900 900 1000 24001]);
            set(gca, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
            pause(0.1);
            
            if j <= 1
                cla;
            end
        end
        
        Shift = [0.9 0 200; 0 0.9 200; 0 0 1];
        win = Shift * win;
        keepw = win;
        D1 = win(1:2, :);
        
        cb = axes('position', [0.12 0.2 0.75 0.75]);
        err = plot(cb, D1(1, :), D1(2, :), '.', 'color', '#EDB120');
        axis([0 2600 0 18001]);
        set(gca, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
        pause(0.1);
        
        if i <= 1
            cla;
        end
    end
    
    C = keep;
    win = keepw;
    
    for i = 1:10
        % Switch and micky run off
        Shift = [1 0 100; 0 1 0; 0 0 1];
        C = Shift * C;
        D1 = C(1:2, :);
        
        cb = axes('position', [0.3 0.60 0.5 0.3]);
        plot(cb, D1(1, :), D1(2, :), 'k.');
        axis([-900 900 1000 24001]);
        set(gca, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
        pause(0.1);
        
        if i <= 10
            cla;
        end
        
        S = [1 0 200; 0 1 0; 0 0 1];
        win = S * win;
        D1 = win(1:2, :);
        
        cb = axes('position', [0.12 0.2 0.75 0.75]);
        err = plot(cb, D1(1, :), D1(2, :), '.', 'color', '#EDB120');
        axis([0 2600 0 18001]);
        set(gca, 'color', 'none', 'handlevisibility', 'on', 'visible', 'off');
        pause(0.1);
        
        if i <= 10
            cla;
        end
    end
    
    out = 1;
    flag = 1;
end
