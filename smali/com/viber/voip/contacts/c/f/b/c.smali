.class public Lcom/viber/voip/contacts/c/f/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/viber/voip/contacts/c/f/b/d;


# direct methods
.method protected constructor <init>(Lcom/viber/jni/CAddressBookEntry;)V
    .locals 4
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Lcom/viber/jni/CAddressBookEntry;->getClientName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/c;->a:Ljava/lang/String;

    .line 139
    new-instance v0, Lcom/viber/voip/contacts/c/f/b/d;

    invoke-virtual {p1}, Lcom/viber/jni/CAddressBookEntry;->getClientOriginalPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/jni/CAddressBookEntry;->getClientCanonizedPhone()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/viber/voip/contacts/c/f/b/d;-><init>(Lcom/viber/voip/contacts/c/f/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/f/b/b;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/c/f/b/c;->b:Lcom/viber/voip/contacts/c/f/b/d;

    .line 140
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/viber/voip/contacts/c/f/b/d;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/c;->b:Lcom/viber/voip/contacts/c/f/b/d;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Client [mClientName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mPhoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/c;->b:Lcom/viber/voip/contacts/c/f/b/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
