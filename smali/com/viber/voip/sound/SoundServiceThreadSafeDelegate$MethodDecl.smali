.class Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final method:Ljava/lang/reflect/Method;

.field final methodName:Ljava/lang/String;

.field private final methodSignatureStr:Ljava/lang/String;

.field final parmDecl:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field final signature:Ljava/lang/String;

.field final synthetic this$0:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;


# direct methods
.method varargs constructor <init>(Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;Ljava/lang/String;Ljava/lang/reflect/Method;[Ljava/lang/Class;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 133
    iput-object p1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->this$0:Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p2, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodName:Ljava/lang/String;

    .line 135
    iput-object p4, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->parmDecl:[Ljava/lang/Class;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const/4 v0, 0x0

    :goto_0
    if-eqz p4, :cond_0

    array-length v2, p4

    if-ge v0, v2, :cond_0

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p4, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "} "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 140
    :cond_0
    invoke-static {p2, p4}, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate;->getSignature(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->signature:Ljava/lang/String;

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodSignatureStr:Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->method:Ljava/lang/reflect/Method;

    .line 143
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 148
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->signature:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 149
    :cond_1
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->signature:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 150
    :cond_2
    instance-of v1, p1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->signature:Ljava/lang/String;

    check-cast p1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;

    iget-object v1, p1, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MethodDecl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/sound/SoundServiceThreadSafeDelegate$MethodDecl;->methodSignatureStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
