Feature: Process Essette Extract 010317_MediGold_PM
	As a Health Services supervisor
	I want to check the status of HealthHelp authorizations pre-Essette
	So that I know that I can verify the information was entered correctly

Scenario Outline: Process Essette Extract 010317_MediGold_PM
Given I load the Amisys HH Processed table into memory
Then I should see the "<qnumber>" in the table

Examples:
| qnumber |
| Q17138638 |
| Q17230646 |
| Q17251492 |
| Q17251492 |
| Q17251492 |
| Q17251492 |
| Q17251492 |
| Q17303748 |
| Q17322884 |
| Q17355027 |
| Q17397539 |
| Q17397798 |
| Q17401659 |
| Q17405027 |
| Q17406572 |
| Q17414044 |
| Q17415272 |
| Q17415479 |
| Q17417623 |
| Q17418981 |
| Q17419148 |
| Q17420141 |
| Q17420672 |
| Q17420869 |
| Q17420965 |
| Q17422288 |
| Q17422385 |
| Q17422541 |
| Q17422585 |
| Q17422722 |
| Q17423774 |
| Q17423774 |
| Q17424152 |
| Q17424152 |
| Q17424152 |
| Q17424462 |
| Q17424814 |
| Q17424814 |
| Q17425477 |
| Q17425565 |
| Q17425545 |
| Q17426023 |
| Q17428520 |
| Q17428520 |
| Q17429049 |
| Q17429635 |
| Q17429696 |
| Q17430158 |
| Q17430213 |
| Q17430243 |
| Q17430398 |
| Q17430387 |
| Q17430496 |
| Q17430648 |
| Q17430648 |
| Q17430933 |
| Q17430951 |
| Q17430998 |
| Q17430951 |
| Q17430933 |
| Q17431141 |
| Q17431611 |
| Q17431899 |
| Q17432177 |
| Q17432213 |
| Q17432995 |
| Q17433038 |
| Q17433038 |
| Q17433432 |
| Q17433843 |
| Q17433995 |
| Q17434031 |
| Q17434367 |
| Q17434520 |
| Q17434584 |
| Q17434609 |
| Q17434708 |
| Q17434824 |
| Q17434964 |
| Q17434984 |
| Q17435421 |
| Q17435559 |
| Q17435851 |
