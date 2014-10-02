.class public Lcom/viber/voip/widget/PhoneTypeField;
.super Lcom/viber/voip/ui/ViberEditText;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/viber/voip/widget/p;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/registration/CountryCode;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/viber/voip/registration/CountryCode;

.field private g:Lcom/viber/voip/widget/o;

.field private h:Lcom/viber/voip/widget/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/widget/PhoneTypeField;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/ui/ViberEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->e:Ljava/util/List;

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->f:Lcom/viber/voip/registration/CountryCode;

    .line 64
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/viber/voip/widget/p;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/viber/voip/widget/p;-><init>(Lcom/viber/voip/widget/PhoneTypeField;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->d:Lcom/viber/voip/widget/p;

    .line 72
    :cond_0
    invoke-direct {p0}, Lcom/viber/voip/widget/PhoneTypeField;->d()V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/widget/PhoneTypeField;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/widget/PhoneTypeField;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput-object p1, p0, Lcom/viber/voip/widget/PhoneTypeField;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/viber/voip/widget/PhoneTypeField;)Lcom/viber/voip/widget/o;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->g:Lcom/viber/voip/widget/o;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0, p0}, Lcom/viber/voip/widget/PhoneTypeField;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    sget-boolean v0, Lcom/viber/voip/widget/PhoneTypeField;->a:Z

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Lcom/viber/voip/widget/n;

    invoke-direct {v0, p0}, Lcom/viber/voip/widget/n;-><init>(Lcom/viber/voip/widget/PhoneTypeField;)V

    invoke-virtual {p0, v0}, Lcom/viber/voip/widget/PhoneTypeField;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 190
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->b()V

    .line 191
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    const/4 v1, 0x3

    const-string/jumbo v2, "PhoneTypeField"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyChanged number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->h:Lcom/viber/voip/widget/q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->h:Lcom/viber/voip/widget/q;

    invoke-interface {v0}, Lcom/viber/voip/widget/q;->f()V

    .line 124
    :cond_0
    return-void

    .line 116
    :cond_1
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->b:Ljava/lang/String;

    .line 117
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->c:Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->f:Lcom/viber/voip/registration/CountryCode;

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 182
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 169
    sget-boolean v0, Lcom/viber/voip/widget/PhoneTypeField;->a:Z

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setCursorVisible(Z)V

    .line 171
    invoke-virtual {p0, v1}, Lcom/viber/voip/widget/PhoneTypeField;->setInputType(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public getHiddenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/viber/voip/widget/PhoneTypeField;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneFieldEditable()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneFieldLength()I
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->length()I

    move-result v0

    return v0
.end method

.method public getPhoneTypeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/viber/voip/widget/PhoneTypeField;->c()V

    .line 187
    return-void
.end method

.method public setContactLookupListener(Lcom/viber/voip/widget/o;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/viber/voip/widget/PhoneTypeField;->g:Lcom/viber/voip/widget/o;

    .line 77
    return-void
.end method

.method public setPhoneFieldText(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    invoke-virtual {p0, p1}, Lcom/viber/voip/widget/PhoneTypeField;->setText(Ljava/lang/CharSequence;)V

    .line 270
    return-void
.end method

.method public setPhoneFieldTextChangeListener(Lcom/viber/voip/widget/q;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/widget/PhoneTypeField;->h:Lcom/viber/voip/widget/q;

    .line 81
    return-void
.end method
