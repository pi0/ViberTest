.class public Lcom/viber/voip/registration/cp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/settings/l;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/viber/voip/registration/cp;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/registration/cp;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/viber/voip/registration/cp;->c:Ljava/lang/String;

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/viber/voip/registration/cp;->d:I

    .line 23
    iput-object v1, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/viber/voip/registration/cp;->f:Ljava/lang/String;

    .line 25
    iput-object v1, p0, Lcom/viber/voip/registration/cp;->g:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lcom/viber/voip/registration/cp;->h:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/viber/voip/ViberApplication;->preferences()Lcom/viber/voip/settings/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    .line 30
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/jni/PhoneControllerWrapper;->getCountryName(Ljava/lang/String;)Lcom/viber/jni/CountryNameInfo;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/viber/jni/CountryNameInfo;->countryShortName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deriveCountryCode from number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", or countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/viber/jni/CountryNameInfo;->countryName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", short name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/viber/jni/CountryNameInfo;->countryShortName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/registration/cp;->c(Ljava/lang/String;)V

    .line 65
    iget-object v0, v0, Lcom/viber/jni/CountryNameInfo;->countryShortName:Ljava/lang/String;

    .line 69
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {p1}, Lcom/viber/voip/registration/cp;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "deriveCountryCode from number: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", or countryCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " - FAILED, fallback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/registration/cp;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    if-nez p0, :cond_0

    move-object v0, v1

    .line 82
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Lcom/viber/voip/registration/SelectCountryActivity;->a()Ljava/util/List;

    move-result-object v0

    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    .line 78
    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 82
    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 142
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cp;->c:Ljava/lang/String;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/viber/voip/registration/cp;->g:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cp;->h:Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_phone_num_canonized"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 129
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/viber/voip/registration/cp;->c:Ljava/lang/String;

    .line 117
    iput-object p2, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    .line 118
    iput-object p3, p0, Lcom/viber/voip/registration/cp;->f:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code"

    invoke-interface {v0, v1, p1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 120
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code_string"

    invoke-interface {v0, v1, p2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 121
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code_string_version"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 122
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_phone_num"

    invoke-interface {v0, v1, p3}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 123
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 40
    iget v0, p0, Lcom/viber/voip/registration/cp;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/viber/voip/registration/cp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/viber/voip/registration/cp;->d:I

    .line 43
    :cond_0
    iget v0, p0, Lcom/viber/voip/registration/cp;->d:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 48
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "reg_viber_country_code_string"

    invoke-interface {v1, v2, v0}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v2, "reg_viber_country_code_string_version"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;I)I

    move-result v1

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getRegAlphaCountryCode() mRegAlphaCountryCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", alphaCountryCodeVersion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/registration/cp;->c(Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    if-eq v2, v0, :cond_0

    if-eq v1, v4, :cond_1

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/viber/voip/registration/cp;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/registration/cp;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code_string"

    iget-object v2, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 55
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code_string_version"

    invoke-interface {v0, v1, v4}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;I)Lcom/viber/voip/settings/l;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_phone_num"

    const-string/jumbo v2, "0"

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cp;->f:Ljava/lang/String;

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_phone_num_canonized"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/viber/voip/settings/l;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/cp;->g:Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/registration/cp;->h:Ljava/lang/String;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->h:Ljava/lang/String;

    return-object v0

    .line 102
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 108
    invoke-virtual {p0}, Lcom/viber/voip/registration/cp;->e()Ljava/lang/String;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 112
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public h()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/viber/voip/registration/cp;->c:Ljava/lang/String;

    .line 133
    iput-object v0, p0, Lcom/viber/voip/registration/cp;->e:Ljava/lang/String;

    .line 134
    iput-object v0, p0, Lcom/viber/voip/registration/cp;->f:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/viber/voip/registration/cp;->g:Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/viber/voip/registration/cp;->b:Lcom/viber/voip/settings/l;

    const-string/jumbo v1, "reg_viber_country_code"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "reg_viber_phone_num"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    move-result-object v0

    const-string/jumbo v1, "reg_viber_phone_num_canonized"

    invoke-interface {v0, v1}, Lcom/viber/voip/settings/l;->a(Ljava/lang/String;)Lcom/viber/voip/settings/l;

    .line 138
    return-void
.end method
