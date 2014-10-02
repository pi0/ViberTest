.class public Lcom/viber/voip/contacts/c/f/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/b/c;


# direct methods
.method private constructor <init>(Lcom/viber/voip/contacts/c/f/b/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/d;->c:Lcom/viber/voip/contacts/c/f/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/b/d;->b:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lcom/viber/voip/contacts/c/f/b/d;->a:Ljava/lang/String;

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/contacts/c/f/b/c;Ljava/lang/String;Ljava/lang/String;Lcom/viber/voip/contacts/c/f/b/b;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/viber/voip/contacts/c/f/b/d;-><init>(Lcom/viber/voip/contacts/c/f/b/c;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PhoneNumber [clientOriginalPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", clientCanonizedPhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/contacts/c/f/b/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
