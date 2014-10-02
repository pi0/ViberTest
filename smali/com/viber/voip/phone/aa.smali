.class public final Lcom/viber/voip/phone/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field static final synthetic b:Z

.field private static final c:Landroid/text/SpannableStringBuilder;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/viber/voip/phone/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/phone/aa;->b:Z

    .line 21
    const-class v0, Lcom/viber/voip/phone/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/phone/aa;->a:Ljava/lang/String;

    .line 24
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    sput-object v0, Lcom/viber/voip/phone/aa;->c:Landroid/text/SpannableStringBuilder;

    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/viber/voip/phone/aa;->d:I

    return-void

    .line 19
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-boolean v0, Lcom/viber/voip/phone/aa;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 42
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string/jumbo v1, "com.viber.voip.action.CALL_INCOMING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    const-string/jumbo v0, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Landroid/telephony/PhoneNumberUtils;->getNumberFromIntent(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 70
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    const-string/jumbo v0, ""

    .line 81
    :goto_0
    return-object v0

    .line 74
    :cond_0
    sget v0, Lcom/viber/voip/phone/aa;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 75
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v0

    sput v0, Lcom/viber/voip/phone/aa;->d:I

    .line 77
    :cond_1
    sget-object v0, Lcom/viber/voip/phone/aa;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 78
    sget-object v0, Lcom/viber/voip/phone/aa;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 80
    sget-object v0, Lcom/viber/voip/phone/aa;->c:Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/viber/voip/phone/aa;->d:I

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Landroid/text/Editable;I)V

    .line 81
    sget-object v0, Lcom/viber/voip/phone/aa;->c:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
