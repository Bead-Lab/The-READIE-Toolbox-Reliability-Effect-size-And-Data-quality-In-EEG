<<<<<<< HEAD
function output = get_vals_overall(vals, conds, seed, split)
=======
function output = get_vals_overall(vals, conds, uq_conds, seed, split)
>>>>>>> b180b23 (Updated user manual with examples)

groups = unique(conds);
G = findgroups(conds);

res = splitapply(@(vals)select_average_overall(vals, seed, split), vals, G);
% res_table = table();
if split
    bins = [1,2];
<<<<<<< HEAD
    colnames = get_colnames([1,2], groups, true);
    vals_row = zeros(1, length(colnames));
=======
    colnames = get_colnames([1,2], uq_conds, true);
    vals_row = NaN(1, length(colnames));
>>>>>>> b180b23 (Updated user manual with examples)
    for i = 1:length(groups)
        for j = 1: length(bins)
            col = string(groups{i}) + '_' + string(bins(j));
            idx = find(colnames==col,1);
            vals_row(idx) = res{i}{bins(j)};
        end
    end
else
<<<<<<< HEAD
    colnames = groups;
    vals_row = zeros(1, length(colnames));
=======
    colnames = uq_conds;
    vals_row = NaN(1, length(colnames));
>>>>>>> b180b23 (Updated user manual with examples)
    for i = 1:length(groups)
        idx = find(colnames==groups(i),1);
        vals_row(idx) = res{i}{1};
    end
end

output = {vals_row, colnames};

end 