.class public Lcom/viber/voip/settings/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/ContentResolver;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/viber/voip/settings/PreferencesContentProvider;->b(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/settings/h;->a:Landroid/content/ContentResolver;

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/viber/voip/settings/g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/h;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getValueAsString, proc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", defValue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/PreferencesContentProvider;->a(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/viber/voip/settings/h;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/viber/voip/settings/PreferencesContentProvider;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v3, 0x1

    aput-object p2, v4, v3

    const/4 v3, 0x2

    aput-object p3, v4, v3

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object p2, v2

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setValueAsString, proc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/PreferencesContentProvider;->a(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/viber/voip/settings/h;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/viber/voip/settings/PreferencesContentProvider;->a()Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 175
    invoke-static {}, Lcom/viber/voip/settings/PreferencesContentProvider;->b()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ILLEGAL REMOTE PREF KEY!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", process:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/String;F)F
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 113
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "F"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;I)I
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 119
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "L"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 107
    const-string/jumbo v0, "S"

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 139
    invoke-direct {p0, p1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "contains, proc: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/viber/voip/process/k;->a()Lcom/viber/voip/process/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/settings/PreferencesContentProvider;->a(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/settings/h;->a:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/viber/voip/settings/PreferencesContentProvider;->a()Landroid/net/Uri;

    move-result-object v1

    move-object v3, p1

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 145
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x54

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 148
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 145
    goto :goto_0

    :cond_1
    move v0, v6

    .line 148
    goto :goto_0
.end method

.method public a(Ljava/lang/String;Z)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    if-eqz p2, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const-string/jumbo v2, "B"

    invoke-direct {p0, p1, v0, v2}, Lcom/viber/voip/settings/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x54

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string/jumbo v0, "F"

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;F)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "F"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "I"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "L"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 123
    const-string/jumbo v0, "S"

    invoke-direct {p0, p1, p2, v0}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    if-eqz p2, :cond_0

    const-string/jumbo v0, "T"

    :goto_0
    const-string/jumbo v1, "B"

    invoke-direct {p0, p1, v0, v1}, Lcom/viber/voip/settings/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void

    .line 126
    :cond_0
    const-string/jumbo v0, "F"

    goto :goto_0
.end method
