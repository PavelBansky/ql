/**
 * @name  Security implications associated with pickle module.
 * @description Consider possible security implications associated with subprocess module.
 *         https://bandit.readthedocs.io/en/latest/blacklists/blacklist_imports.html#b404-import-subprocess
 * @kind problem
 * @tags security
 * @problem.severity recommendation
 * @precision high
 * @id py/bandit/imports-pickle
 */

import python


from Import i
where i.getName(_).getAsname().toString() = "pickle"
  and exists(i.getLocation().getFile().getRelativePath())
select i, "Consider possible security implications associated with pickle module."


