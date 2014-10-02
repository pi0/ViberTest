.class public Lcom/viber/voip/phone/b/b/c;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field private a:Lcom/viber/voip/phone/call/k;

.field private b:Lcom/viber/jni/secure/SecureCallsController;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/Button;

.field private f:Lcom/viber/voip/util/fy;


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 58
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/viber/voip/util/fy;

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v7

    const/4 v2, 0x1

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v1, v5

    new-array v2, v5, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v8

    const/4 v2, 0x6

    new-array v3, v6, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v5, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/viber/voip/util/fy;-><init>([[I)V

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/c;->f:Lcom/viber/voip/util/fy;

    .line 59
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getSecureCallsController()Lcom/viber/jni/secure/SecureCallsController;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/c;->b:Lcom/viber/jni/secure/SecureCallsController;

    .line 60
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/jni/PhoneControllerWrapper;->getCurrentCall()Lcom/viber/voip/phone/call/k;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    .line 61
    return-void

    .line 44
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5et 0x6t 0xct 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5ft 0x6t 0xct 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x60t 0x6t 0xct 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x61t 0x6t 0xct 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x62t 0x6t 0xct 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x63t 0x6t 0xct 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x5dt 0x6t 0xct 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x5bt 0x6t 0xct 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x5ct 0x6t 0xct 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x5at 0x6t 0xct 0x7ft
    .end array-data
.end method

.method static synthetic a(Lcom/viber/voip/phone/b/b/c;)Lcom/viber/voip/phone/call/k;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    return-object v0
.end method

.method static synthetic b(Lcom/viber/voip/phone/b/b/c;)Lcom/viber/jni/secure/SecureCallsController;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->b:Lcom/viber/jni/secure/SecureCallsController;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/c;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    if-eqz p1, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .parameter

    .prologue
    .line 65
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/c;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v2, 0x7f0d0058

    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 66
    invoke-virtual {v1}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f03006b

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 67
    const v0, 0x7f0701b1

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/c;->e:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->e:Landroid/widget/Button;

    new-instance v3, Lcom/viber/voip/phone/b/b/d;

    invoke-direct {v3, p0}, Lcom/viber/voip/phone/b/b/d;-><init>(Lcom/viber/voip/phone/b/b/c;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v0, 0x7f0701b0

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/c;->c:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0701b2

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/b/b/c;->d:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->d:Landroid/widget/TextView;

    new-instance v3, Lcom/viber/voip/phone/b/b/e;

    invoke-direct {v3, p0}, Lcom/viber/voip/phone/b/b/e;-><init>(Lcom/viber/voip/phone/b/b/c;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 93
    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 94
    return-object v1
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 100
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/c;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 101
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 102
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 103
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/viber/voip/phone/b/b/c;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 108
    :goto_0
    const/4 v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 109
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 111
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    if-nez v0, :cond_1

    .line 125
    :goto_1
    return-void

    .line 106
    :cond_0
    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->d()Lcom/viber/voip/phone/call/n;

    move-result-object v1

    .line 116
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/b;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->a()Ljava/lang/String;

    move-result-object v0

    .line 118
    :goto_2
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->j()Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v3, p0, Lcom/viber/voip/phone/b/b/c;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/viber/voip/phone/b/b/c;->f:Lcom/viber/voip/util/fy;

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->g()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/viber/voip/util/fy;->a(I)I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v2, v5, v0

    invoke-virtual {p0, v4, v5}, Lcom/viber/voip/phone/b/b/c;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->m()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/n;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->e:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->a:Lcom/viber/voip/phone/call/k;

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 123
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/b/b/c;->e:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method
