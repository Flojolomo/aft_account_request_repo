# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_03" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "florian_siegel+aft-evaluation-sandbox-03@outlook.de"
    AccountName  = "sandbox-account-03"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Playground"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "florian_siegel@outlook.de"
    SSOUserFirstName = "Florian"
    SSOUserLastName  = "Siegel"
  }

  account_tags = {
    "ABC:Owner"       = "florian_siegel@outlook.de"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Florian Siegel"
    change_reason       = "testing the account vending process"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  # account_customizations_name = "sandbox-customizations"
}
