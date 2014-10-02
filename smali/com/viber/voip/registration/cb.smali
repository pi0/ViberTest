.class public Lcom/viber/voip/registration/cb;
.super Lcom/viber/voip/registration/ai;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/viber/voip/d;


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private d:Landroid/widget/Button;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/Spinner;

.field private h:Landroid/widget/Spinner;

.field private i:Landroid/widget/EditText;

.field private j:Lcom/viber/voip/registration/CountryCode;

.field private k:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "prod"

    aput-object v1, v0, v2

    const-string/jumbo v1, "int"

    aput-object v1, v0, v3

    const-string/jumbo v1, "dev"

    aput-object v1, v0, v4

    sput-object v0, Lcom/viber/voip/registration/cb;->b:[Ljava/lang/String;

    .line 65
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "primary"

    aput-object v1, v0, v2

    const-string/jumbo v1, "secondary"

    aput-object v1, v0, v3

    sput-object v0, Lcom/viber/voip/registration/cb;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/viber/voip/registration/ai;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/registration/cb;)Landroid/app/AlertDialog;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->k:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 276
    return-void
.end method

.method private a(Lcom/viber/voip/registration/CountryCode;)V
    .locals 3
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    .line 281
    if-nez p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->f:Landroid/widget/TextView;

    const v1, 0x7f0c02ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 288
    :goto_0
    return-void

    .line 284
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v0

    .line 285
    invoke-virtual {p1}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/util/l;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/viber/voip/registration/cb;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/registration/cb;Lcom/viber/voip/registration/CountryCode;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/viber/voip/registration/cb;->a(Lcom/viber/voip/registration/CountryCode;)V

    return-void
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->d:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 222
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->i:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 223
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 225
    return-void
.end method

.method static synthetic b(Lcom/viber/voip/registration/cb;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->d:Landroid/widget/Button;

    return-object v0
.end method

.method private m()V
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 158
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 161
    :cond_0
    return-void
.end method

.method private n()V
    .locals 6

    .prologue
    .line 164
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const v0, 0x7f0c02f9

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/cb;->a(I)V

    .line 202
    :goto_1
    return-void

    .line 164
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/viber/voip/registration/cb;->p()Ljava/lang/String;

    move-result-object v1

    .line 172
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/viber/jni/PhoneControllerWrapper;->canonizePhoneNumberForCountryCode(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v2, v0}, Lcom/viber/voip/registration/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "canonizePhoneNumber phoneNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", alphaCountryCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", canonizedNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/viber/voip/registration/cb;->h(Ljava/lang/String;)V

    .line 179
    sget-object v4, Lcom/viber/voip/util/fq;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v4}, Ljava/util/regex/Pattern;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v2, :cond_3

    .line 181
    :cond_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "103"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 182
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 183
    const v1, 0x7f0c038f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c04f9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0c0333

    new-instance v3, Lcom/viber/voip/registration/ce;

    invoke-direct {v3, p0}, Lcom/viber/voip/registration/ce;-><init>(Lcom/viber/voip/registration/cb;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 196
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->k:Landroid/app/AlertDialog;

    .line 197
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 200
    :cond_3
    invoke-virtual {p0, v0, v3, v1}, Lcom/viber/voip/registration/cb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private o()V
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0703a0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/RegistrationScrollView;

    .line 345
    if-eqz v0, :cond_0

    .line 346
    new-instance v1, Lcom/viber/voip/registration/cg;

    invoke-direct {v1, p0, v0}, Lcom/viber/voip/registration/cg;-><init>(Lcom/viber/voip/registration/cb;Lcom/viber/voip/registration/RegistrationScrollView;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/RegistrationScrollView;->setOnResizeViewListener(Lcom/viber/voip/registration/co;)V

    .line 358
    :cond_0
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->i:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 365
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->a(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v0, "activationCodeReceived"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/cb;->h(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 370
    invoke-virtual {v0, p1}, Lcom/viber/voip/registration/ActivationController;->setActicationCode(Ljava/lang/String;)V

    .line 372
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.viber.voip.action.ACTIVATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 373
    const-string/jumbo v2, "activation_code"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    invoke-virtual {v0, v3, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 376
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 380
    invoke-super {p0, p1, p2}, Lcom/viber/voip/registration/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "114"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "115"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 385
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->i()V

    goto :goto_0

    .line 388
    :cond_1
    const-string/jumbo v0, "104"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/cb;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-virtual {p0, p1}, Lcom/viber/voip/registration/cb;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method protected c()V
    .locals 1

    .prologue
    .line 205
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/cb;->a(Z)V

    .line 209
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->c()V

    .line 210
    return-void
.end method

.method protected f()V
    .locals 1

    .prologue
    .line 213
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->f()V

    .line 214
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/cb;->a(Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .prologue
    .line 112
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getCountryCodeManager()Lcom/viber/voip/registration/ar;

    move-result-object v0

    new-instance v1, Lcom/viber/voip/registration/cc;

    invoke-direct {v1, p0}, Lcom/viber/voip/registration/cc;-><init>(Lcom/viber/voip/registration/cb;)V

    invoke-virtual {v0, v1}, Lcom/viber/voip/registration/ar;->a(Lcom/viber/voip/registration/au;)V

    .line 123
    return-void
.end method

.method public onActivityBackPressed()Z
    .locals 3

    .prologue
    .line 454
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 455
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->onActivityBackPressed()Z

    move-result v0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    if-eqz p1, :cond_0

    .line 99
    const-string/jumbo v0, "country_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    .line 100
    const-string/jumbo v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-direct {p0, v1}, Lcom/viber/voip/registration/cb;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 103
    if-eqz v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/viber/voip/registration/cb;->i:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->l()V

    .line 109
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 127
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 128
    if-eqz p3, :cond_0

    const-string/jumbo v0, "extra_selected_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string/jumbo v0, "extra_selected_code"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    .line 130
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/cb;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 133
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter

    .prologue
    .line 442
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x102000b

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 443
    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    const v1, 0x7f0c04f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v2, "103"

    invoke-virtual {v1, v2}, Lcom/viber/voip/a/u;->c(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 450
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 412
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 414
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    .line 415
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/registration/ci;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/registration/ci;-><init>(Lcom/viber/voip/registration/cb;Lcom/viber/voip/ViberApplication;)V

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    .line 422
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/viber/voip/registration/ActivationController;->setStep(IZ)V

    .line 423
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 139
    :sswitch_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hb;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 142
    :sswitch_1
    invoke-direct {p0}, Lcom/viber/voip/registration/cb;->m()V

    .line 143
    invoke-direct {p0}, Lcom/viber/voip/registration/cb;->n()V

    goto :goto_0

    .line 146
    :sswitch_2
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v1

    sget-object v2, Lcom/viber/voip/a/a;->b:Lcom/viber/voip/a/ak;

    iget-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/viber/voip/a/ak;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    const-string/jumbo v1, "extra_selected_code"

    iget-object v2, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/registration/cb;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 146
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_1

    .line 137
    :sswitch_data_0
    .sparse-switch
        0x7f07015c -> :sswitch_1
        0x7f0702b9 -> :sswitch_0
        0x7f07039b -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 87
    const-string/jumbo v0, "onCreate"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/cb;->h(Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->b:Lcom/viber/voip/a/ak;

    invoke-virtual {v1}, Lcom/viber/voip/a/ak;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x8

    .line 229
    const v0, 0x7f030118

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 230
    const v0, 0x7f07015b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->i:Landroid/widget/EditText;

    .line 231
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->i:Landroid/widget/EditText;

    new-instance v2, Lcom/viber/voip/registration/cf;

    invoke-direct {v2, p0}, Lcom/viber/voip/registration/cf;-><init>(Lcom/viber/voip/registration/cb;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    const v0, 0x7f07015c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->d:Landroid/widget/Button;

    .line 246
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->d:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f07039b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->e:Landroid/view/View;

    .line 249
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const v0, 0x7f07039c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->f:Landroid/widget/TextView;

    .line 252
    const v0, 0x7f07039d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->g:Landroid/widget/Spinner;

    .line 253
    const v0, 0x7f07039e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->h:Landroid/widget/Spinner;

    .line 263
    invoke-static {}, Lcom/viber/voip/ViberApplication;->isTablet()Z

    move-result v0

    invoke-static {v0}, Lcom/viber/voip/registration/dj;->a(Z)V

    .line 265
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->g:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->h:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 269
    invoke-direct {p0}, Lcom/viber/voip/registration/cb;->o()V

    .line 271
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->g()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->removeRegistrationCallback()V

    .line 435
    const-string/jumbo v0, "waiting_for_activation_dialog"

    invoke-virtual {p0, v0}, Lcom/viber/voip/registration/cb;->g(Ljava/lang/String;)V

    .line 437
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->onDestroy()V

    .line 438
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/viber/voip/registration/ai;->onResume()V

    .line 398
    invoke-virtual {p0}, Lcom/viber/voip/registration/cb;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_0

    const-string/jumbo v1, "extra_selected_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 401
    const-string/jumbo v1, "extra_selected_code"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    iput-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    .line 402
    iget-object v0, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-direct {p0, v0}, Lcom/viber/voip/registration/cb;->a(Lcom/viber/voip/registration/CountryCode;)V

    .line 404
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 427
    const-string/jumbo v0, "country_code"

    iget-object v1, p0, Lcom/viber/voip/registration/cb;->j:Lcom/viber/voip/registration/CountryCode;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 428
    const-string/jumbo v0, "number"

    invoke-direct {p0}, Lcom/viber/voip/registration/cb;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-super {p0, p1}, Lcom/viber/voip/registration/ai;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 430
    return-void
.end method
