include: "/views/refined/*.view.lkml"

explore: budget_optimization {
  label: "Budget Optimization"
  from: budget_non_optimized
  join: budget_optimized {
    sql_on: ${budget_optimization.channel} = ${budget_optimized.channel} AND
      ${budget_optimization.metric} = ${budget_optimized.metric};;
    relationship: many_to_one
  }
}
