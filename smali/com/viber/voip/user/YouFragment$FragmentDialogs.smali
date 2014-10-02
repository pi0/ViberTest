.class public Lcom/viber/voip/user/YouFragment$FragmentDialogs;
.super Lcom/actionbarsherlock/app/SherlockDialogFragment;
.source "SourceFile"


# static fields
.field private static final DIALOG_ID_ARG:Ljava/lang/String; = "dialog_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 630
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lcom/viber/voip/user/YouFragment$FragmentDialogs;
    .locals 3
    .parameter

    .prologue
    .line 635
    new-instance v0, Lcom/viber/voip/user/YouFragment$FragmentDialogs;

    invoke-direct {v0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;-><init>()V

    .line 636
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 637
    const-string/jumbo v2, "dialog_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 638
    invoke-virtual {v0, v1}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->setArguments(Landroid/os/Bundle;)V

    .line 639
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0c02b6

    const v3, 0x7f0c02b5

    const/4 v1, 0x0

    .line 644
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "dialog_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 693
    :goto_0
    return-object v0

    .line 646
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030133

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 647
    const v0, 0x7f0703d8

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 649
    invoke-static {}, Lcom/viber/voip/user/UserData;->getName()Ljava/lang/String;

    move-result-object v3

    .line 650
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 651
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 653
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0c0488

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c047c

    new-instance v3, Lcom/viber/voip/user/YouFragment$FragmentDialogs$1;

    invoke-direct {v3, p0, v0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs$1;-><init>(Lcom/viber/voip/user/YouFragment$FragmentDialogs;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 669
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0437

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0438

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/YouFragment$FragmentDialogs$3;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs$3;-><init>(Lcom/viber/voip/user/YouFragment$FragmentDialogs;)V

    invoke-virtual {v0, v5, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/user/YouFragment$FragmentDialogs$2;

    invoke-direct {v1, p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs$2;-><init>(Lcom/viber/voip/user/YouFragment$FragmentDialogs;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 687
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/user/YouFragment$FragmentDialogs;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0c06d7

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0c06d8

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
