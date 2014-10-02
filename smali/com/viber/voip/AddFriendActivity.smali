.class public Lcom/viber/voip/AddFriendActivity;
.super Lcom/viber/voip/BaseAddFriendActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/v;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/BaseAddFriendActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/AddFriendActivity;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/viber/voip/AddFriendActivity;->b:Landroid/widget/Button;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->e()V

    .line 129
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p0}, Lcom/viber/voip/AddFriendActivity;->a(Ljava/lang/String;ZLcom/viber/voip/v;)V

    .line 130
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/AddFriendActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->b()V

    return-void
.end method

.method private c()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->e()V

    .line 134
    invoke-static {p0}, Lcom/viber/voip/util/gz;->a(Landroid/content/Context;)V

    .line 135
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendActivity;->finish()V

    .line 136
    return-void
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 181
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 182
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 145
    packed-switch p1, :pswitch_data_0

    .line 158
    const v0, 0x7f0c038f

    const v1, 0x7f0c04f9

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    .line 161
    :goto_0
    return-void

    .line 147
    :pswitch_0
    invoke-static {p0, p2}, Lcom/viber/voip/util/gv;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendActivity;->finish()V

    goto :goto_0

    .line 152
    :pswitch_1
    const v0, 0x7f0c03a2

    const v1, 0x7f0c037e

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 155
    :pswitch_2
    const v0, 0x7f0c0557

    const v1, 0x7f0c0558

    invoke-static {p0, v0, v1, v2}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILjava/lang/Runnable;)Landroid/content/DialogInterface;

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 165
    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v1

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->c()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->b()J

    move-result-wide v4

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->e()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;->f()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lcom/viber/voip/util/gn;->a(Landroid/content/Context;ZJJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 173
    :goto_0
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendActivity;->finish()V

    .line 174
    return-void

    .line 171
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/viber/voip/util/gv;->a(Landroid/content/Context;Ljava/lang/String;Lcom/viber/voip/BaseAddFriendActivity$ContactDetails;)V

    goto :goto_0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->e()V

    .line 124
    invoke-super {p0}, Lcom/viber/voip/BaseAddFriendActivity;->finish()V

    .line 125
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 99
    sparse-switch v0, :sswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 101
    :sswitch_0
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->b()V

    goto :goto_0

    .line 104
    :sswitch_1
    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->c()V

    goto :goto_0

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x7f07016c -> :sswitch_0
        0x7f07018f -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/16 v7, 0x8

    const/4 v3, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030063

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    .line 38
    invoke-virtual {v0, v2}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 42
    const v0, 0x7f07018d

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    .line 43
    const v0, 0x7f07016c

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/AddFriendActivity;->b:Landroid/widget/Button;

    .line 44
    const v0, 0x7f07018f

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/AddFriendActivity;->c:Landroid/widget/Button;

    .line 45
    const v0, 0x7f07018e

    invoke-virtual {p0, v0}, Lcom/viber/voip/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    const v1, 0x7f070190

    invoke-virtual {p0, v1}, Lcom/viber/voip/AddFriendActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 48
    if-nez p1, :cond_0

    .line 50
    iget-object v5, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    const-string/jumbo v6, "phone_number"

    invoke-virtual {v4, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v4, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 56
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 59
    :cond_0
    iget-object v4, p0, Lcom/viber/voip/AddFriendActivity;->b:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/viber/voip/AddFriendActivity;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    :goto_0
    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 60
    iget-object v2, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    new-instance v4, Lcom/viber/voip/e;

    invoke-direct {v4, p0}, Lcom/viber/voip/e;-><init>(Lcom/viber/voip/AddFriendActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 71
    iget-object v2, p0, Lcom/viber/voip/AddFriendActivity;->a:Landroid/widget/EditText;

    new-instance v4, Lcom/viber/voip/f;

    invoke-direct {v4, p0}, Lcom/viber/voip/f;-><init>(Lcom/viber/voip/AddFriendActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 81
    iget-object v2, p0, Lcom/viber/voip/AddFriendActivity;->b:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v2, p0, Lcom/viber/voip/AddFriendActivity;->c:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    if-lez v2, :cond_2

    .line 86
    iget-object v2, p0, Lcom/viber/voip/AddFriendActivity;->c:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 59
    goto :goto_0

    .line 90
    :cond_2
    iget-object v2, p0, Lcom/viber/voip/AddFriendActivity;->c:Landroid/widget/Button;

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 92
    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 1
    .parameter

    .prologue
    .line 111
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    .line 112
    packed-switch v0, :pswitch_data_0

    .line 117
    invoke-super {p0, p1}, Lcom/viber/voip/BaseAddFriendActivity;->onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 114
    :pswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/AddFriendActivity;->onBackPressed()V

    .line 115
    const/4 v0, 0x1

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
