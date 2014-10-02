.class public abstract Lcom/viber/voip/contacts/c/f/b/a;
.super Lcom/viber/jni/PhoneControllerDelegateAdapter;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/viber/voip/contacts/c/f/b/f;

.field private c:Lcom/viber/voip/contacts/c/f/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    const-class v0, Lcom/viber/voip/contacts/c/f/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/c/f/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/viber/jni/PhoneControllerDelegateAdapter;-><init>()V

    .line 156
    return-void
.end method


# virtual methods
.method public abstract a(Lcom/viber/voip/contacts/c/f/b/e;)V
.end method

.method public abstract a(Lcom/viber/voip/contacts/c/f/b/f;)V
.end method

.method public onAddressBook(IIZZI[Lcom/viber/jni/CAddressBookEntry;)Z
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->c:Lcom/viber/voip/contacts/c/f/b/e;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_3

    :cond_0
    move v0, v8

    .line 246
    :goto_0
    if-eqz v0, :cond_1

    .line 247
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/e;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/f/b/e;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->c:Lcom/viber/voip/contacts/c/f/b/e;

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->c:Lcom/viber/voip/contacts/c/f/b/e;

    move v1, p2

    move v3, p5

    move v4, p3

    move v5, p4

    move v6, v2

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/contacts/c/f/b/e;->a(IIIZZI[Lcom/viber/jni/CAddressBookEntry;)V

    .line 252
    if-eqz p4, :cond_2

    .line 253
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->c:Lcom/viber/voip/contacts/c/f/b/e;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a;->a(Lcom/viber/voip/contacts/c/f/b/e;)V

    .line 254
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->c:Lcom/viber/voip/contacts/c/f/b/e;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a;->a(Lcom/viber/voip/contacts/c/f/b/f;)V

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->c:Lcom/viber/voip/contacts/c/f/b/e;

    .line 266
    :cond_2
    return v8

    :cond_3
    move v0, v2

    .line 244
    goto :goto_0
.end method

.method public onRegisteredNumbers(ZZLjava/util/Map;IZLjava/lang/String;Ljava/lang/String;II)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    const/4 v0, 0x1

    .line 211
    :goto_0
    if-eqz v0, :cond_1

    .line 212
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/f;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/f/b/f;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    .line 215
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/f;->g()Z

    move-result v0

    if-eq v0, p1, :cond_2

    .line 216
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/f;->e()V

    .line 217
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a;->a(Lcom/viber/voip/contacts/c/f/b/f;)V

    .line 218
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/f;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/f/b/f;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v2, p4

    move v4, p1

    move v5, p2

    move/from16 v6, p8

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/contacts/c/f/b/f;->a(IIIZZILjava/util/Map;)V

    .line 223
    if-eqz p2, :cond_3

    .line 224
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/c/f/b/a;->a(Lcom/viber/voip/contacts/c/f/b/f;)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a;->b:Lcom/viber/voip/contacts/c/f/b/f;

    .line 235
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 209
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
