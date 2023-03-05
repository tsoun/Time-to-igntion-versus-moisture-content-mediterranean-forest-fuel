%%%%%%%%%%%%%%%
% Time-to-ignition of various mediterranean forest fuels versus their
% moisture content. Visualization of the experimental data provided in:
%
% Dimitrakopoulos, A.P. and Papaioannou, K.K. (2001) “Flammability 
% Assessment of Mediterranean Forest Fuels,” Fire Technology, 37(2), 
% pp. 143–152. Available at: https://doi.org/10.1023/a:1011641601076. 
%
%%%%%%%%%%%%%%%%

plotRegressionModel("Calicotome villosa", 20.081, 0.721, 80, ">63");
plotRegressionModel("Juniperus oxycedrus", 16.698, 0.532, 86, "90-140");
plotRegressionModel("Quercus coccifera", 7.682, 0.359, 82, ">80");
plotRegressionModel("Pinus halepensis", 5.246, 0.311, 81, "89-138");
plotRegressionModel("Olea europea", 9.261, 0.251, 92, "70-120");
plotRegressionModel("Quercus ilex", 8.884, 0.249, 91, ">67");


function [] = plotRegressionModel (plant, a, b, rSquared, moe)
% a: a constant of the regression model.
% b: b constant of the regression model.
% rSquared: coefficient of determination of the regression model 
%           (percentage).
% moe: moisture of extinction (percentage of the oven-dry weight).

    figure();
    x = 50:150;
    plot(x, a+b*x, "Color", "r", "LineWidth", 2);
    title(plant);
    subtitle(sprintf("R^2=%d%%, M.O.E.:%s%%", rSquared, moe));
    ylabel("Time-to-ignition [s]")
    xlabel("Moisture Content [%]")
    grid on;

end