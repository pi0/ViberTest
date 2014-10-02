.class public Lcom/viber/service/contacts/sync/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const v0, 0x7f0c07a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/c/a;->a:Ljava/lang/String;

    .line 18
    const v0, 0x7f0c04fc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/c/a;->b:Ljava/lang/String;

    .line 19
    const v0, 0x7f0c04fd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/c/a;->c:Ljava/lang/String;

    .line 20
    const v0, 0x7f0c04fe

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/service/contacts/sync/c/a;->d:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 30
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const-string/jumbo v0, "data2"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string/jumbo v0, "data3"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_call"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p1
.end method

.method public b(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 44
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string/jumbo v0, "data2"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string/jumbo v0, "data3"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->c:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string/jumbo v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_number_message"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-object p1
.end method

.method public c(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 52
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v0, "data2"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string/jumbo v0, "data3"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_viber"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-object p1
.end method

.method public d(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 60
    const-string/jumbo v0, "data1"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string/jumbo v0, "data2"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "data3"

    iget-object v1, p0, Lcom/viber/service/contacts/sync/c/a;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "mimetype"

    const-string/jumbo v1, "vnd.android.cursor.item/vnd.com.viber.voip.viber_out_call_none_viber"

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-object p1
.end method
