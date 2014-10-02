.class public Lcom/viber/voip/registration/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/sms/i;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/viber/voip/registration/o;

.field private final c:Ljava/util/regex/Pattern;

.field private final d:Ljava/util/regex/Pattern;

.field private e:Lcom/viber/voip/sms/a;


# direct methods
.method public constructor <init>(Lcom/viber/voip/registration/o;)V
    .locals 2
    .parameter

    .prologue
    .line 69
    const-string/jumbo v0, "Viber"

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/registration/af;-><init>(Lcom/viber/voip/registration/o;Ljava/lang/String;I)V

    .line 70
    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/registration/o;Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The listener argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    if-nez p2, :cond_1

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The requiredText argument is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_1
    const/4 v0, 0x1

    if-ge p3, v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The codeLength argument less than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    iput-object p1, p0, Lcom/viber/voip/registration/af;->b:Lcom/viber/voip/registration/o;

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/af;->a:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "(\\d{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "})(?=[^\\d]*|$)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/af;->c:Ljava/util/regex/Pattern;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "((\\s)||(.))*(((:(\\w{1,2})|([\\r\\n]))\\d{4})|("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/af;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "((\\s)||(.))*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/af;->d:Ljava/util/regex/Pattern;

    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getSmsDbManager()Lcom/viber/voip/sms/a;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/registration/af;->e:Lcom/viber/voip/sms/a;

    .line 62
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/registration/af;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/viber/voip/registration/af;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 76
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/viber/voip/registration/af;->e:Lcom/viber/voip/sms/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/sms/a;->a(Lcom/viber/voip/sms/i;)V

    .line 85
    return-void
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/viber/voip/registration/af;->e:Lcom/viber/voip/sms/a;

    invoke-virtual {v0, p1}, Lcom/viber/voip/sms/a;->a(I)V

    .line 94
    invoke-direct {p0, p3}, Lcom/viber/voip/registration/af;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 97
    iget-object v1, p0, Lcom/viber/voip/registration/af;->b:Lcom/viber/voip/registration/o;

    invoke-interface {v1, v0}, Lcom/viber/voip/registration/o;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/viber/voip/registration/af;->e:Lcom/viber/voip/sms/a;

    invoke-virtual {v0, p0}, Lcom/viber/voip/sms/a;->b(Lcom/viber/voip/sms/i;)V

    .line 89
    return-void
.end method
