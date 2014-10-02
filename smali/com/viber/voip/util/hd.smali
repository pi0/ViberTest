.class public Lcom/viber/voip/util/hd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/util/hd;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/util/hd;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Z

    move-result v1

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ViberCallChecker.check: canonizedNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", defaultNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    .line 192
    if-eqz v1, :cond_0

    .line 194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 198
    :goto_0
    return-object p2

    .line 197
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ViberCallChecker.check: failed to canonize number, using default "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 202
    invoke-static {p0, p1, p1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 244
    if-eqz p0, :cond_0

    .line 245
    const-string/jumbo v0, "[-.]*"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 247
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 52
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checking number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v2

    .line 57
    sget-object v3, Lcom/viber/voip/util/hi;->a:[I

    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 70
    invoke-static {p0}, Lcom/viber/voip/util/ft;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 71
    const/4 v1, 0x2

    invoke-interface {p2, v4, v1, v0}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    .line 77
    :goto_1
    return-void

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    :pswitch_0
    invoke-interface {p2, v4, v5, v0}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_1

    .line 62
    :pswitch_1
    invoke-virtual {v1}, Lcom/viber/jni/PhoneControllerWrapper;->isFastNetwork()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v2

    invoke-static {v2, v1, v0, p2}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/contacts/c/d/b;Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;Lcom/viber/voip/util/hj;)V

    goto :goto_1

    .line 65
    :cond_1
    const/4 v1, 0x3

    invoke-interface {p2, v4, v1, v0}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_1

    .line 73
    :cond_2
    invoke-interface {p2, v4, v5, v0}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Lcom/viber/voip/contacts/c/d/b;Lcom/viber/jni/PhoneControllerWrapper;Ljava/lang/String;Lcom/viber/voip/util/hj;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 87
    if-nez p2, :cond_0

    .line 88
    invoke-interface {p3, v0, v3, p2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    .line 134
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v2, Lcom/viber/voip/util/fq;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    const/4 v1, 0x5

    invoke-interface {p3, v0, v1, p2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object v2, Lcom/viber/voip/util/fq;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    const/4 v1, 0x6

    invoke-interface {p3, v0, v1, p2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_2
    sget-object v2, Lcom/viber/voip/util/fq;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 94
    invoke-interface {p0, p2}, Lcom/viber/voip/contacts/c/d/b;->c(Ljava/lang/String;)Lcom/viber/voip/contacts/c/d/l;

    move-result-object v2

    .line 95
    sget-object v3, Lcom/viber/voip/contacts/c/d/l;->c:Lcom/viber/voip/contacts/c/d/l;

    if-eq v2, v3, :cond_4

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getLocalNumberStatus state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    .line 97
    sget-object v3, Lcom/viber/voip/contacts/c/d/l;->a:Lcom/viber/voip/contacts/c/d/l;

    if-ne v3, v2, :cond_3

    :goto_1
    invoke-interface {p3, v1, v0, p2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    .line 99
    :cond_4
    new-instance v0, Lcom/viber/voip/util/he;

    invoke-direct {v0, p2, p3, p1}, Lcom/viber/voip/util/he;-><init>(Ljava/lang/String;Lcom/viber/voip/util/hj;Lcom/viber/jni/PhoneControllerWrapper;)V

    invoke-virtual {p1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->registerDelegate(Lcom/viber/jni/PhoneControllerDelegate;)V

    .line 123
    new-instance v0, Lcom/viber/voip/util/hf;

    invoke-direct {v0, p2}, Lcom/viber/voip/util/hf;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto :goto_0

    .line 132
    :cond_5
    invoke-interface {p3, v0, v3, p2}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/ViberApplication;I)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 218
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getActivationController()Lcom/viber/voip/registration/ActivationController;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/viber/voip/registration/ActivationController;->getCountryCodeInt()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 228
    const/4 v2, 0x0

    .line 229
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x7

    if-lt v3, v4, :cond_0

    .line 230
    invoke-virtual {p0, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/viber/jni/PhoneControllerWrapper;->canonizePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_0
    if-eqz v2, :cond_1

    .line 235
    const/16 v3, 0x91

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 236
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static b(Lcom/viber/voip/ViberApplication;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 206
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x7

    if-lt v0, v1, :cond_1

    .line 207
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 211
    :cond_0
    invoke-virtual {p0, v2}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/viber/jni/PhoneControllerWrapper;->getCountryCode(Ljava/lang/String;)I

    move-result v0

    .line 213
    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static b(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Lcom/viber/voip/util/hj;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 137
    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v1

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIsOnline checking number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    .line 141
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkIsOnline the same as registration number : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    .line 143
    const/4 v1, 0x7

    invoke-interface {p2, v4, v1, v0}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    .line 184
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, v4}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/util/hg;

    invoke-direct {v2, p0, v0, p2}, Lcom/viber/voip/util/hg;-><init>(Lcom/viber/voip/ViberApplication;Ljava/lang/String;Lcom/viber/voip/util/hj;)V

    invoke-virtual {v1, v2}, Lcom/viber/jni/PhoneControllerWrapper;->addInitializedListener(Lcom/viber/jni/PhoneControllerWrapper$InitializedListener;)V

    goto :goto_0

    .line 182
    :cond_1
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p2, v4, v0, v1}, Lcom/viber/voip/util/hj;->a(ZILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/viber/voip/util/hd;->c(Ljava/lang/String;)V

    return-void
.end method

.method private static c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    return-void
.end method
