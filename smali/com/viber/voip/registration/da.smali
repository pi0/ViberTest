.class Lcom/viber/voip/registration/da;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/registration/SelectCountryActivity;


# direct methods
.method constructor <init>(Lcom/viber/voip/registration/SelectCountryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 216
    iget-object v0, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->d(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    iget-object v1, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/SelectCountryActivity;->d(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "+"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    new-instance v2, Ljava/util/ArrayList;

    const/16 v0, 0xfa

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, ".*\\b\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v1}, Lcom/viber/voip/registration/SelectCountryActivity;->d(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\E.*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 220
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/registration/CountryCode;

    .line 223
    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->b()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v5}, Lcom/viber/voip/registration/SelectCountryActivity;->d(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lcom/viber/voip/registration/CountryCode;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 224
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 231
    :goto_1
    iget-object v1, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    new-instance v2, Lcom/viber/voip/registration/db;

    invoke-direct {v2, p0, v0}, Lcom/viber/voip/registration/db;-><init>(Lcom/viber/voip/registration/da;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/viber/voip/registration/SelectCountryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 242
    return-void

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/registration/da;->a:Lcom/viber/voip/registration/SelectCountryActivity;

    invoke-static {v0}, Lcom/viber/voip/registration/SelectCountryActivity;->a(Lcom/viber/voip/registration/SelectCountryActivity;)Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method
